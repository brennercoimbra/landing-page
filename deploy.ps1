# Script de deploy automatizado para GitHub Pages (PowerShell)
# Autor: Brenner Coimbra
# Data: 2025-10-14

Write-Host "🚀 Iniciando processo de deploy..." -ForegroundColor Green
Write-Host ""

# 1. Verificar se há mudanças não commitadas
$status = git status -s
if ($status) {
    Write-Host "⚠️  Há mudanças não commitadas. Commitando automaticamente..." -ForegroundColor Yellow
    git add .
    $commitMsg = Read-Host "Digite a mensagem do commit"
    git commit -m $commitMsg
    Write-Host "✅ Commit realizado!" -ForegroundColor Green
    Write-Host ""
}

# 2. Fazer pull das últimas mudanças
Write-Host "📥 Sincronizando com o repositório remoto..." -ForegroundColor Cyan
git pull --rebase
Write-Host "✅ Sincronização completa!" -ForegroundColor Green
Write-Host ""

# 3. Remover pasta docs antiga
Write-Host "🗑️  Removendo build anterior..." -ForegroundColor Cyan
if (Test-Path "docs") {
    Remove-Item -Recurse -Force "docs"
}
Write-Host "✅ Build anterior removido!" -ForegroundColor Green
Write-Host ""

# 4. Fazer build de produção
Write-Host "🔨 Gerando build de produção..." -ForegroundColor Cyan
npx ng build --configuration=production --output-path=docs --base-href=/
Write-Host "✅ Build gerado com sucesso!" -ForegroundColor Green
Write-Host ""

# 5. Corrigir base href (problema do Git Bash no Windows)
Write-Host "🔧 Corrigindo base href para domínio personalizado..." -ForegroundColor Cyan
$indexPath = "docs\index.html"
if (Test-Path $indexPath) {
    $content = Get-Content $indexPath -Raw
    $content = $content -replace '<base href="C:/Users/brenner\.coimbra/AppData/Local/Programs/Git/landing-page/">', '<base href="/">'
    $content | Set-Content $indexPath -NoNewline
    Write-Host "✅ Base href corrigido!" -ForegroundColor Green
} else {
    Write-Host "⚠️  Arquivo index.html não encontrado!" -ForegroundColor Red
}
Write-Host ""

# 6. Recriar arquivo CNAME para domínio personalizado
Write-Host "🌐 Criando arquivo CNAME..." -ForegroundColor Cyan
"consultoriaamandasanttos.com.br" | Set-Content "docs\CNAME" -NoNewline
Write-Host "✅ CNAME criado!" -ForegroundColor Green
Write-Host ""

# 7. Adicionar mudanças ao git
Write-Host "📦 Adicionando arquivos ao git..." -ForegroundColor Cyan
git add .
Write-Host "✅ Arquivos adicionados!" -ForegroundColor Green
Write-Host ""

# 8. Commit do build
Write-Host "💾 Fazendo commit do build..." -ForegroundColor Cyan
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "Deploy: Atualizar build para GitHub Pages - $timestamp"
Write-Host "✅ Commit realizado!" -ForegroundColor Green
Write-Host ""

# 9. Push para o GitHub
Write-Host "🚢 Enviando para o GitHub..." -ForegroundColor Cyan
git push
Write-Host "✅ Deploy enviado com sucesso!" -ForegroundColor Green
Write-Host ""

Write-Host "🎉 Deploy concluído!" -ForegroundColor Green
Write-Host "🌐 Sua landing page estará disponível em:" -ForegroundColor Cyan
Write-Host "   - https://consultoriaamandasanttos.com.br (domínio personalizado)" -ForegroundColor Cyan
Write-Host "   - https://brennercoimbra.github.io/landing-page/ (GitHub Pages)" -ForegroundColor Cyan
Write-Host "⏱️  Aguarde 1-3 minutos para o GitHub Pages processar o deploy." -ForegroundColor Yellow
Write-Host ""

# Pausar para ver o resultado
Read-Host "Pressione Enter para sair"
