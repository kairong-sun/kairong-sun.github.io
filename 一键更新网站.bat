@echo off
title Kairong Sun Academic Site Updater
echo ========================================================
echo   Kairong Sun 个人学术主页 一键同步工具
echo   One-Click Website Deployer (GitHub Pages)
echo ========================================================
echo.
set msg=
set /p msg=请输入本次更新说明 (回车默认: Update website): 
if "%msg%"=="" set msg=Update website
echo.
echo [1/3] Git Add: 正在暂存文件改动...
git add .
echo.
echo [2/3] Git Commit: 正在创建提交版本 [%msg%]...
git commit -m "%msg%"
echo.
echo [3/3] Git Push: 正在同步推送到 GitHub...
git push origin main
echo.
echo ========================================================
echo   同步完成 (Deploy Success)!
echo   等待 1 分钟后刷新您的主页查看最新效果：
echo   https://kairong-sun.github.io
echo ========================================================
pause
