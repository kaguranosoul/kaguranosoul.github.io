@echo off
REM 脚本名称: deploy_update.bat
REM 作用: 暂存所有更改, 覆盖上一次提交, 并强制推送到 main-hugo 分支。
REM -----------------------------------------------------------------

REM 解决乱码问题，强制使用 UTF-8 编码
chcp 65001 > nul

set TARGET_BRANCH=main-hugo

echo --- 1. Staging all changes (git add .) ---
git add .

echo --- 2. Amending last commit (git commit --amend --no-edit) ---
REM 这会覆盖上一次提交，确保所有更改都在一个干净的 commit 中
git commit --amend --no-edit

echo --- 3. Force pushing to %TARGET_BRANCH% (git push --force) ---
git push origin %TARGET_BRANCH% --force

if errorlevel 0 (
    echo ======================================
    echo 🚀 SUCCESS: Force Pushed to %TARGET_BRANCH%
    echo GitHub Actions workflow started.
    echo ======================================
) else (
    echo ❌ ERROR: Push failed. Check credentials or network.
)

:eof