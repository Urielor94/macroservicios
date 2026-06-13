# 🎯 Macroservicios

Plataforma centralizada de aplicaciones integradas con auto-actualización via GitHub + Netlify.

## 📁 Estructura

```
Macroservicios/
├── index.html                    # Menú principal
├── apps/
│   ├── rrhh/                    # Gestión de RRHH
│   │   ├── index.html
│   │   ├── asistente-pro.html
│   │   └── asistente-gratis.html
│   ├── evidencias/              # Auditoría de evidencias
│   │   ├── index.html
│   │   ├── local.html
│   │   └── cali.html
│   ├── reportes/                # Generación de reportes
│   │   └── index.html
│   ├── llamadas/                # Panel de llamadas
│   │   ├── index.html
│   │   ├── supervisor-panel.html
│   │   └── panel.html
│   └── spy/                     # Monitoreo
│       ├── index.html
│       └── supervisor.html
├── .gitignore
└── README.md
```

## 🚀 Cómo Usar

1. **Local:** Abre `index.html` en tu navegador
2. **Online:** https://urielor94.netlify.app/

## 🔄 Auto-Actualización

### Paso 1: Crear Repo en GitHub

```bash
cd C:\Users\USUARIO\Documents\Netlify\Macroservicios
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/tuusuario/macroservicios.git
git push -u origin main
```

### Paso 2: Conectar Netlify

1. Ve a https://app.netlify.com
2. Click **"New site from Git"**
3. Conecta tu repo GitHub
4. Deploy automático en cada push ✅

### Paso 3: Script de Sincronización (Automático)

Crea un archivo `sync.bat` en la raíz:

```batch
@echo off
cd /d "C:\Users\USUARIO\Documents\Netlify\Macroservicios"
git add -A
git commit -m "Auto-update: %date% %time%"
git push origin main
echo ✅ Sincronizado
pause
```

**Ejecuta con:** `sync.bat`

O programado (Programador de Tareas de Windows):
- **Acción:** Ejecutar `sync.bat`
- **Cada:** 1 hora (o la frecuencia que necesites)

## 📝 Para Actualizar Apps

1. **Modifica los archivos locales**
2. **Ejecuta `sync.bat`** (o automático cada hora)
3. **Netlify redeploy automáticamente** en 30 segundos
4. **La web se actualiza** 🎉

## 🌐 URLs Disponibles

| App | URL |
|-----|-----|
| Principal | https://urielor94.netlify.app/ |
| RRHH Pro | https://urielor94.netlify.app/apps/rrhh/asistente-pro.html |
| RRHH Gratis | https://urielor94.netlify.app/apps/rrhh/asistente-gratis.html |
| Evidencias Local | https://urielor94.netlify.app/apps/evidencias/local.html |
| Evidencias Cali | https://urielor94.netlify.app/apps/evidencias/cali.html |
| Llamadas Panel | https://urielor94.netlify.app/apps/llamadas/supervisor-panel.html |
| Spy Monitor | https://urielor94.netlify.app/apps/spy/supervisor.html |

## 🔧 Troubleshooting

**P: Cambié un archivo pero no se actualiza en la web**
R: Ejecuta `sync.bat` y espera 30 segundos

**P: ¿Cómo agrego una nueva app?**
R: 
1. Crea carpeta `apps/nueva-app/`
2. Agrega tu `index.html`
3. Ejecuta `sync.bat`
4. Listo ✅

---

**Última actualización:** 2026-06-13
