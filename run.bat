@echo off
REM 脚本名称: deploy_update.bat
REM 作用: 暂存所有更改, 提交到 main-hugo 分支, 并推送。
REM
REM 用法: 在 Windows 命令提示符 (CMD) 或 PowerShell 中执行:
REM   1. deploy_update.bat "您的提交信息"
REM   2. deploy_update.bat
REM -----------------------------------------------------------------

REM 目标分支名称
set TARGET_BRANCH=main-hugo

REM -----------------------------------------------------------------
echo --- 检查仓库状态... ---

REM 使用 git status --porcelain 检查是否有未提交的更改
git status --porcelain
if errorlevel 1 (
    echo ❌ Git 状态检查失败。请确保您在 Git 仓库内，并且 Git 命令可用。
    goto :eof
)

REM 如果没有输出，则表示工作区是干净的。我们依赖 git commit 的反馈来处理“没有更改”的情况。

REM 1. 暂存所有更改
echo --- 1. 暂存所有更改 (git add .) ---
git add .

REM 2. 设置提交信息
if "%1"=="" (
    set COMMIT_MESSAGE="常规更新: Automated push from local script"
) else (
    set COMMIT_MESSAGE="%1"
)

REM 3. 提交更改
echo --- 2. 提交更改: %COMMIT_MESSAGE% ---
git commit -m %COMMIT_MESSAGE%

REM 检查 git commit 的结果
if errorlevel 1 (
    REM 提交失败，可能是因为“没有东西可以提交”，或者其他错误。
    REM 打印警告后继续，因为如果本地分支落后于远程，可能需要 push
    echo ⚠️ 提交失败，可能没有新的更改需要提交 (将尝试推送)。
    goto :push
)

:push
REM 4. 推送到目标分支
echo --- 3. 推送到 %TARGET_BRANCH% 分支 ---
git push origin %TARGET_BRANCH%

REM 检查 git push 的结果
if errorlevel 1 (
    echo ❌ 推送失败。请检查您的网络连接或 Git 凭证。
) else (
    echo ======================================
    echo 🚀 成功推送代码到 %TARGET_BRANCH% 分支。
    echo GitHub Actions 工作流已启动。
    echo ======================================
)

:eof