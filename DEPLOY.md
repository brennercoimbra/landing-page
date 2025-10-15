# 🚀 Scripts de Deploy Automatizado

Este projeto contém scripts para automatizar o processo de deploy da landing page para o GitHub Pages.

## 📋 Scripts Disponíveis

### 1. `deploy.sh` (Git Bash / Linux / Mac)

Script para ambientes Unix-like e Git Bash no Windows.

### 2. `deploy.ps1` (PowerShell)

Script nativo para Windows PowerShell.

---

## 🔧 Como Usar

### Opção 1: Git Bash (Windows/Linux/Mac)

1. Abra o Git Bash no diretório do projeto
2. Dê permissão de execução ao script (apenas na primeira vez):
   ```bash
   chmod +x deploy.sh
   ```
3. Execute o script:
   ```bash
   ./deploy.sh
   ```

### Opção 2: PowerShell (Windows)

1. Abra o PowerShell no diretório do projeto
2. Se necessário, habilite a execução de scripts:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
3. Execute o script:
   ```powershell
   .\deploy.ps1
   ```

---

## ✨ O que os scripts fazem automaticamente:

1. ✅ Verifica se há mudanças não commitadas
2. ✅ Solicita mensagem de commit (se houver mudanças)
3. ✅ Sincroniza com o repositório remoto (git pull)
4. ✅ Remove o build anterior
5. ✅ Gera novo build de produção
6. ✅ Corrige o `base href` automaticamente
7. ✅ Faz commit do build
8. ✅ Envia para o GitHub (git push)

---

## 🌐 Resultado

Após executar o script, aguarde 1-3 minutos e acesse:

**https://brennercoimbra.github.io/landing-page/**

---

## 📝 Observações

- Os scripts fazem commit e push automaticamente
- Certifique-se de estar na branch correta antes de executar
- Em caso de conflitos no git pull, o script será interrompido
- Sempre revise as mudanças antes de executar em produção

---

## 🐛 Solução de Problemas

### Erro de permissão no Git Bash

```bash
chmod +x deploy.sh
```

### Erro de execução no PowerShell

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Build com base href errado

Os scripts já corrigem isso automaticamente! O problema ocorre quando o Git Bash interpreta `/landing-page/` como um caminho do Windows.

---

## 📧 Contato

Em caso de dúvidas, entre em contato com o desenvolvedor.
