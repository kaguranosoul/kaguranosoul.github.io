#!/bin/bash
# 脚本名称: deploy_update.sh
# 作用: 暂存所有更改, 提交到 main-hugo 分支, 并推送。
# 用法: 
#   1. chmod +x deploy_update.sh
#   2. ./deploy_update.sh "您的提交信息"

# 目标分支名称
TARGET_BRANCH="main-hugo"

# 检查是否有未暂存或未提交的更改
if git diff --quiet && git diff --cached --quiet; then
    echo "✅ 仓库干净，没有需要提交的新更改。"
    exit 0
fi

# 1. 暂存所有更改
echo "--- 1. 暂存所有更改 (git add .) ---"
git add .

# 2. 设置提交信息
if [ -z "$1" ]; then
    COMMIT_MESSAGE="常规更新: Automated push from local script"
else
    COMMIT_MESSAGE="$1"
fi

# 3. 提交更改
echo "--- 2. 提交更改: ${COMMIT_MESSAGE} ---"
if git commit -m "$COMMIT_MESSAGE"; then
    echo "✅ 提交成功。"
else
    echo "❌ 提交失败，可能没有新的更改需要提交。"
    exit 1
fi

# 4. 推送到目标分支
echo "--- 3. 推送到 ${TARGET_BRANCH} 分支 ---"
if git push origin $TARGET_BRANCH; then
    echo "======================================"
    echo "🚀 成功推送代码到 ${TARGET_BRANCH} 分支。"
    echo "GitHub Actions 工作流已启动。"
    echo "======================================"
else
    echo "❌ 推送失败。请检查您的网络连接或 Git 配置。"
    exit 1
fi