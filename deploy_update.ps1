<#
.SYNOPSIS
  一键提交和推送更改到指定的 Git 分支。
.DESCRIPTION
  此脚本会暂存 (git add .) 所有更改, 使用提供的或默认的提交信息进行提交,
  然后推送到目标分支 (main-hugo)。
.PARAMETER CommitMessage
  用于 Git 提交信息的字符串。如果未提供，将使用默认信息。
.EXAMPLE
  .\deploy_update.ps1 "修复了样式表并更新了所有文章"
  - 使用自定义消息提交并推送。
.EXAMPLE
  .\deploy_update.ps1
  - 使用默认消息提交并推送。
#>
param(
    [Parameter(Position=0)]
    [string]$CommitMessage = "常规更新: Automated push from local script"
)

# 目标分支名称
$TARGET_BRANCH = "main-hugo"

# 检查是否有未暂存或未提交的更改。
# git diff --quiet 检查工作目录和索引是否有差异
# git diff --cached --quiet 检查索引和 HEAD 是否有差异 (如果它们都返回 exit code 0, 则表示仓库干净)
Write-Host "--- 检查仓库状态... ---"
try {
    # 检查工作区和索引的差异 (未暂存的改动)
    git diff --quiet
    $UnstagedExitCode = $LASTEXITCODE

    # 检查索引和 HEAD 的差异 (已暂存的改动)
    git diff --cached --quiet
    $StagedExitCode = $LASTEXITCODE

    if ($UnstagedExitCode -eq 0 -and $StagedExitCode -eq 0) {
        Write-Host "✅ 仓库干净，没有需要提交的新更改。"
        exit 0
    }
} catch {
    Write-Error "Git 状态检查失败。请确保您在 Git 仓库内，并且 git 命令可用。"
    exit 1
}


# 1. 暂存所有更改
Write-Host "--- 1. 暂存所有更改 (git add .) ---"
git add .

# 2. 提交更改
Write-Host "--- 2. 提交更改: $($CommitMessage) ---"
try {
    # 尝试提交，如果 staged 区域为空，git commit 可能会失败
    git commit -m $CommitMessage
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ 提交成功。"
    } elseif ($LASTEXITCODE -eq 1) {
        # git commit 返回 1 可能是因为“没有东西可以提交”
        Write-Host "⚠️ 提交失败，可能没有新的更改需要提交 (已忽略)。"
        # 不退出，继续尝试推送，以防本地分支落后于远程
    } else {
        Write-Error "❌ Git 提交失败，返回码: $LASTEXITCODE"
        exit 1
    }
} catch {
    Write-Error "❌ 提交过程中发生异常。"
    exit 1
}


# 3. 推送到目标分支
Write-Host "--- 3. 推送到 $($TARGET_BRANCH) 分支 ---"
try {
    git push origin $TARGET_BRANCH
    if ($LASTEXITCODE -eq 0) {
        Write-Host "======================================"
        Write-Host "🚀 成功推送代码到 $($TARGET_BRANCH) 分支。"
        Write-Host "GitHub Actions 工作流已启动。"
        Write-Host "======================================"
    } else {
        Write-Error "❌ 推送失败，返回码: $LASTEXITCODE"
        exit 1
    }
} catch {
    Write-Error "❌ 推送过程中发生异常。请检查您的网络连接或 Git 配置。"
    exit 1
}