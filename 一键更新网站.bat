@echo off
echo ========================================================
echo   Kairong Sun 个人学术网站一键更新工具
echo ========================================================
echo.
set msg=
set /p msg=请输入本次更新说明 (直接回车默认: Update website): 
if "%msg%"=="" set msg=Update website
echo.
echo [1/3] 正在暂存修改 (git add)...
git add .
echo.
echo [2/3] 正在保存版本 (git commit): %msg%
git commit -m "%msg%"
echo.
echo [3/3] 正在同步到 GitHub (git push)...
git push origin main
echo.
echo ========================================================
echo   同步完成！
echo   请等待约 1 分钟后刷新您的学术主页查看更新：
echo   https://kairong-sun.github.io
echo ========================================================
pause
