@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\miniprogram-ci@1.9.13\node_modules\miniprogram-ci\bin\node_modules;D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\miniprogram-ci@1.9.13\node_modules\miniprogram-ci\node_modules;D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\miniprogram-ci@1.9.13\node_modules;D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\miniprogram-ci@1.9.13\node_modules\miniprogram-ci\bin\node_modules;D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\miniprogram-ci@1.9.13\node_modules\miniprogram-ci\node_modules;D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\miniprogram-ci@1.9.13\node_modules;D:\node-v16.20.2-win-x64\pnpm_app\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\pnpm_app\node_modules\miniprogram-ci\bin\miniprogram-ci.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\pnpm_app\node_modules\miniprogram-ci\bin\miniprogram-ci.js" %*
)
