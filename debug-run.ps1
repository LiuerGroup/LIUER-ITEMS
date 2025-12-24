# 简化的调试脚本
$ErrorActionPreference = "Stop"

Write-Host "开始调试..."
try {
    cd "d:\PROJECT\BetaLiuerPCInfoViewTool\publish"
    Write-Host "检查文件: $(Test-Path BetaLiuerPCInfoViewTool.exe)"
    & ".\BetaLiuerPCInfoViewTool.exe"
    Write-Host "退出代码: $LASTEXITCODE"
} catch {
    Write-Host "错误: $_"
}