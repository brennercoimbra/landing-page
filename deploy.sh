#!/bin/bash

# Script de deploy automatizado para GitHub Pages
# Autor: Brenner Coimbra
# Data: 2025-10-14

echo "🚀 Iniciando processo de deploy..."
echo ""

# 1. Verificar se há mudanças não commitadas
if [[ -n $(git status -s) ]]; then
    echo "⚠️  Há mudanças não commitadas. Commitando automaticamente..."
    git add .
    read -p "Digite a mensagem do commit: " commit_msg
    git commit -m "$commit_msg"
    echo "✅ Commit realizado!"
    echo ""
fi

# 2. Fazer pull das últimas mudanças
echo "📥 Sincronizando com o repositório remoto..."
git pull --rebase
echo "✅ Sincronização completa!"
echo ""

# 3. Remover pasta docs antiga
echo "🗑️  Removendo build anterior..."
rm -rf docs
echo "✅ Build anterior removido!"
echo ""

# 4. Fazer build de produção
echo "🔨 Gerando build de produção..."
npx ng build --configuration=production --output-path=docs --base-href=/
echo "✅ Build gerado com sucesso!"
echo ""

# 5. Corrigir base href (problema do Git Bash no Windows)
echo "🔧 Corrigindo base href para domínio personalizado..."
sed -i 's|<base href="C:/Users/brenner.coimbra/AppData/Local/Programs/Git/landing-page/">|<base href="/">|g' docs/index.html
echo "✅ Base href corrigido!"
echo ""

# 6. Recriar arquivo CNAME para domínio personalizado
echo "🌐 Criando arquivo CNAME..."
echo "consultoriaamandasanttos.com.br" > docs/CNAME
echo "✅ CNAME criado!"
echo ""

# 7. Adicionar mudanças ao git
echo "📦 Adicionando arquivos ao git..."
git add .
echo "✅ Arquivos adicionados!"
echo ""

# 8. Commit do build
echo "💾 Fazendo commit do build..."
git commit -m "Deploy: Atualizar build para GitHub Pages - $(date +'%Y-%m-%d %H:%M:%S')"
echo "✅ Commit realizado!"
echo ""

# 9. Push para o GitHub
echo "🚢 Enviando para o GitHub..."
git push
echo "✅ Deploy enviado com sucesso!"
echo ""

echo "🎉 Deploy concluído!"
echo "🌐 Sua landing page estará disponível em:"
echo "   - https://consultoriaamandasanttos.com.br (domínio personalizado)"
echo "   - https://brennercoimbra.github.io/landing-page/ (GitHub Pages)"
echo "⏱️  Aguarde 1-3 minutos para o GitHub Pages processar o deploy."
echo ""
