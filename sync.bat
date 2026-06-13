@echo off
REM =====================================================
REM Script de sincronización automática GitHub + Netlify
REM =====================================================

REM Cambiar a la carpeta del proyecto
cd /d "C:\Users\USUARIO\Documents\Netlify\Macroservicios"

REM Verificar si git está inicializado
if not exist ".git" (
    echo ❌ Git no está inicializado. Ejecuta primero:
    echo.
    echo git init
    echo git remote add origin https://github.com/tuusuario/macroservicios.git
    echo.
    pause
    exit /b
)

REM Agregar todos los cambios
echo 📦 Agregando cambios...
git add -A

REM Verificar si hay cambios
git diff --cached --quiet
if errorlevel 1 (
    REM Hay cambios - hacer commit y push
    echo 💾 Haciendo commit...
    for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
    for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)

    git commit -m "Auto-update: %mydate% %mytime%"

    echo 🚀 Enviando a GitHub...
    git push origin main

    echo.
    echo ✅ Sincronización completada
    echo ⏱️  Netlify redeploy en ~30 segundos
) else (
    echo ℹ️  No hay cambios para sincronizar
)

echo.
pause
