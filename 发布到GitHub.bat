@echo off
chcp 65001 >nul
echo ============================================
echo   收藏家工作台 - 一键发布到 GitHub
echo ============================================
echo.
echo 此脚本会:
echo   1. 在 GitHub 网页打开「新建仓库」页（请手动确认）
echo   2. 在本地 git 中确认 remote 已设置为:
echo      https://github.com/yuye-web/collector-workspace.git
echo   3. 推送 3 个 commit 到 main 分支
echo.
echo 前置条件: 你已在 GitHub 登录 yuye-web 账号（浏览器）
echo.
pause

REM Step 1: 打开 GitHub 新建仓库页（已登录后会预填 yuye-web）
start "" "https://github.com/new?owner=yuye-web&name=collector-workspace&description=%E6%94%B6%E8%97%8F%E5%AE%B6%E5%B7%A5%E4%BD%9C%E5%8F%B0%20%C2%B7%201%3A110%20%E4%B8%96%E7%95%8C%E5%9C%B0%E5%9B%BE%E5%8D%9A%E7%89%A9%E9%A6%86%E5%B7%A1%E7%A4%BC%EF%BC%8C%E8%97%8F%E5%93%81%E6%A3%80%E7%B4%A2%EF%BC%8C%E6%8B%8D%E5%8D%96%E6%97%A5%E7%A8%8B%EF%BC%8C%E5%B1%95%E8%A7%88%E4%BF%A1%E6%81%AF&visibility=public"

echo.
echo ============================================
echo   请在打开的网页中:
echo     - Repository name: collector-workspace  (已预填)
echo     - Description:     收藏家工作台 ...    (已预填)
echo     - 选中: Public
echo     - 不要勾选: Add a README file
echo     - 不要勾选: Add .gitignore
echo     - 不要勾选: Choose a license
echo   然后点击「Create repository」
echo.
echo   提示: 如果提示 "already exists"，说明仓库已存在，直接关闭窗口即可。
echo.
pause

REM Step 2: 进入仓库目录并推送
cd /d "%~dp0"

echo.
echo ============================================
echo   当前 remote 配置:
git remote -v
echo.
echo   即将推送 3 个 commit 到 main 分支...
echo   (会弹窗要求登录 GitHub，浏览器登录后会自动 push)
echo.
pause

git push -u origin main

if errorlevel 1 (
    echo.
    echo ============================================
    echo   推送失败，请检查:
    echo     1. 仓库 https://github.com/yuye-web/collector-workspace 是否已创建
    echo     2. 是否已登录 yuye-web GitHub 账号
    echo     3. 网络代理是否影响 git push
    echo ============================================
    pause
    exit /b 1
)

echo.
echo ============================================
echo   推送成功！
echo.
echo   下一步:
echo     1. 打开 https://github.com/yuye-web/collector-workspace/settings/pages
echo     2. Source 选: Deploy from a branch
echo     3. Branch 选: main / (root)
echo     4. 点击 Save
echo     5. 等 1-2 分钟后访问: https://yuye-web.github.io/collector-workspace/
echo ============================================
echo.
pause
