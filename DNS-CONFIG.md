# 🌐 Configuração do Domínio Personalizado

## Domínio: consultoriaamandasanttos.com.br

Para que o domínio funcione corretamente com o GitHub Pages, siga estas instruções:

---

## 📋 Configurações DNS Necessárias

Acesse o painel de controle do seu provedor de domínio (Registro.br, GoDaddy, Hostinger, etc.) e adicione os seguintes registros DNS:

### 1. Registro A (IPv4)

Adicione **4 registros A** apontando para os servidores do GitHub Pages:

```
Tipo: A
Nome: @
Valor: 185.199.108.153
TTL: 3600
```

```
Tipo: A
Nome: @
Valor: 185.199.109.153
TTL: 3600
```

```
Tipo: A
Nome: @
Valor: 185.199.110.153
TTL: 3600
```

```
Tipo: A
Nome: @
Valor: 185.199.111.153
TTL: 3600
```

### 2. Registro CNAME (para www)

```
Tipo: CNAME
Nome: www
Valor: brennercoimbra.github.io
TTL: 3600
```

---

## ✅ Verificação

Após configurar o DNS, aguarde a propagação (pode levar até 48 horas, mas geralmente leva de 15 minutos a 2 horas).

### Comandos para testar:

```bash
# Verificar registros A
nslookup consultoriaamandasanttos.com.br

# Verificar registro CNAME
nslookup www.consultoriaamandasanttos.com.br
```

---

## 🔒 HTTPS (SSL)

O GitHub Pages fornece certificado SSL gratuito automaticamente após a configuração do domínio personalizado. Para ativar:

1. Acesse: https://github.com/brennercoimbra/landing-page/settings/pages
2. Aguarde o DNS propagar
3. Marque a opção **"Enforce HTTPS"**

---

## 📝 Arquivo CNAME

O arquivo `docs/CNAME` já está configurado com:
```
consultoriaamandasanttos.com.br
```

Este arquivo é criado automaticamente pelos scripts de deploy (`deploy.sh` e `deploy.ps1`).

---

## 🌍 URLs de Acesso

Após a configuração completa, o site estará disponível em:

- ✅ **https://consultoriaamandasanttos.com.br** (domínio personalizado)
- ✅ **https://www.consultoriaamandasanttos.com.br** (com www)
- ✅ **https://brennercoimbra.github.io/landing-page/** (GitHub Pages original)

---

## 🐛 Solução de Problemas

### Erro 404 ou site não carrega
- Verifique se o DNS propagou: https://dnschecker.org
- Confirme que o arquivo CNAME está em `docs/CNAME`
- Verifique as configurações em: https://github.com/brennercoimbra/landing-page/settings/pages

### Erro de certificado SSL
- Aguarde até 24 horas após a propagação do DNS
- Verifique se "Enforce HTTPS" está ativado nas configurações do GitHub Pages

### Imagens não aparecem
- Certifique-se de que `base href` está como `/` (não `/landing-page/`)
- Use os scripts de deploy atualizados que já fazem isso automaticamente

---

## 📚 Documentação Oficial

- [GitHub Pages - Custom Domain](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
- [Managing a custom domain](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)

---

## 🚀 Deploy

Após configurar o DNS, use os scripts de deploy para fazer atualizações:

```bash
./deploy.sh    # Git Bash / Linux / Mac
```

ou

```powershell
.\deploy.ps1   # PowerShell (Windows)
```

Os scripts já criam automaticamente o arquivo CNAME e configuram o `base href` corretamente!
