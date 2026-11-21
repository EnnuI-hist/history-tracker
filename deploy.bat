@echo off
chcp 65001 > nul
echo [1/3] Добавление измененных файлов...
git add .
echo [2/3] Создание коммита...
set msg=%~1
if "%msg%"=="" set msg=Update site via Agent
git commit -m "%msg%"
echo [3/3] Отправка на GitHub...
git push origin main
echo.
echo =======================================
echo Готово! Все изменения отправлены на GitHub.
echo =======================================
timeout /t 3 > nul
