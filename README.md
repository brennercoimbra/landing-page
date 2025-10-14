# 🏋️ Landing Page - Consultoria Amanda Santtos

Landing page para consultoria online de educação física, desenvolvida com Angular.

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-success)](https://brennercoimbra.github.io/landing-page/)
[![Angular](https://img.shields.io/badge/Angular-16.2.16-red)](https://angular.io/)

## 🌐 Acesse o Site

**https://brennercoimbra.github.io/landing-page/**

---

## 🚀 Deploy Automatizado

Este projeto possui scripts para automatizar o processo de build e deploy para o GitHub Pages.

### Opção 1: Git Bash (Recomendado)
```bash
./deploy.sh
```

### Opção 2: PowerShell (Windows)
```powershell
.\deploy.ps1
```

📖 Para mais detalhes sobre os scripts de deploy, consulte: [DEPLOY.md](DEPLOY.md)

---

## 💻 Desenvolvimento Local

### Pré-requisitos
- Node.js (v16 ou superior)
- Angular CLI (`npm install -g @angular/cli`)

### Instalar Dependências
```bash
npm install
```

### Servidor de Desenvolvimento
```bash
npm start
```
ou
```bash
ng serve
```

Acesse: `http://localhost:4200/`

A aplicação será recarregada automaticamente quando você modificar os arquivos.

---

## 🔨 Build Manual

### Build de Produção
```bash
ng build --configuration=production --output-path docs --base-href /landing-page/
```

### Corrigir Base Href (se necessário)
```bash
sed -i 's|<base href="C:/Users/brenner.coimbra/AppData/Local/Programs/Git/landing-page/">|<base href="/landing-page/">|g' docs/index.html
```

---

## 📁 Estrutura do Projeto

```
landing-page/
├── src/
│   ├── app/
│   │   ├── components/
│   │   │   └── landing/          # Componente principal da landing page
│   │   ├── app.component.ts
│   │   └── app.config.ts
│   ├── assets/                   # Imagens e recursos
│   ├── index.html
│   └── styles.scss
├── docs/                         # Build de produção (GitHub Pages)
├── deploy.sh                     # Script de deploy (Bash)
├── deploy.ps1                    # Script de deploy (PowerShell)
├── DEPLOY.md                     # Documentação de deploy
└── README.md
```

---

## 🛠️ Tecnologias Utilizadas

- **Angular 16.2.16** - Framework frontend
- **TypeScript** - Linguagem de programação
- **SCSS** - Pré-processador CSS
- **GitHub Pages** - Hospedagem
- **Angular CLI** - Ferramenta de build

---

## 📝 Scripts Disponíveis

| Comando | Descrição |
|---------|-----------|
| `npm start` | Inicia servidor de desenvolvimento |
| `npm test` | Executa testes unitários |
| `npm run build` | Gera build de produção |
| `./deploy.sh` | Deploy automatizado (Bash) |
| `.\deploy.ps1` | Deploy automatizado (PowerShell) |

---

## 🎨 Funcionalidades

- ✅ Design responsivo
- ✅ Animações suaves
- ✅ Seção Hero com imagem
- ✅ Sobre a consultoria
- ✅ Benefícios do serviço
- ✅ Como funciona (passo a passo)
- ✅ Planos de consultoria
- ✅ Integração com WhatsApp
- ✅ Footer com informações

---

## 🐛 Solução de Problemas

### Imagem não aparece
Certifique-se de que:
- O arquivo está em `src/assets/foto.jpg`
- A extensão do arquivo corresponde ao formato real
- O build foi feito corretamente

### Base href incorreto
Use os scripts automatizados `deploy.sh` ou `deploy.ps1` que corrigem isso automaticamente.

---

## 📧 Contato

Para dúvidas ou sugestões, entre em contato:
- **WhatsApp**: [+55 31 99126-0534](https://wa.me/5531991260534)

---

## 📄 Licença

© 2025 Consultoria Online de Educação Física. Todos os direitos reservados.

---

## 🔗 Links Úteis

- [Angular CLI Overview](https://angular.io/cli)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Angular Documentation](https://angular.io/docs)
