# Script para copiar los 3 archivos HTML principales

$source1 = "C:\Users\USUARIO\Documents\Auditoria de Evidencias de Operarios\Supabase\Informe Auditoria Evidencias Cali.html"
$dest1 = "C:\Users\USUARIO\Documents\Netlify\Macroservicios\apps\evidencias\cali.html"

$source2 = "C:\Users\USUARIO\Documents\Proyecto Spy\supervisor\index.html"
$dest2 = "C:\Users\USUARIO\Documents\Netlify\Macroservicios\apps\spy\supervisor.html"

$source3 = "C:\Users\USUARIO\Documents\App Llamadas\Panel Supervisor.html"
$dest3 = "C:\Users\USUARIO\Documents\Netlify\Macroservicios\apps\llamadas\panel.html"

# Copiar archivos
Write-Host "📋 Copiando Auditoria Cali..."
Copy-Item $source1 $dest1 -Force
Write-Host "✅ Cali copiado"

Write-Host "🕵️ Copiando Spy Supervisor..."
Copy-Item $source2 $dest2 -Force
Write-Host "✅ Spy copiado"

Write-Host "📞 Copiando Panel Llamadas..."
Copy-Item $source3 $dest3 -Force
Write-Host "✅ Llamadas copiado"

Write-Host ""
Write-Host "✨ Todos los archivos copiados. Ahora sincroniza con:"
Write-Host "cd C:\Users\USUARIO\Documents\Netlify\Macroservicios"
Write-Host "git add ."
Write-Host "git commit -m 'Add: 3 apps principales funcionales'"
Write-Host "git push"
