# Finish wiring

The site, PDF, and Gmail template are built. Remaining work is accounts I cannot log into from here.

Planned site URL: **https://unstruct.com/**

## 1. GitHub repo (do this before DNS, so the domain has somewhere to land)

1. Create a **public** repo named `unslop` under `buzzrocketgroup`  
   https://github.com/new  
   Do not add a README, gitignore, or license.
2. In PowerShell:

```powershell
cd C:\Users\buzzh\unslop
git add .
git commit -m "Add UNSLOP landing page, manual, and Gmail template."
git branch -M main
git remote add origin https://github.com/buzzrocketgroup/unslop.git
git push -u origin main
```

If git complains that a repo already exists, skip `git init` and just add / commit / push.

3. Repo → **Settings → Pages**
4. Source: **Deploy from a branch** → `main` / `/ (root)`
5. Custom domain: `unstruct.com` → Save
6. Wait until GitHub shows the domain as DNS-checked, then tick **Enforce HTTPS** when it is enabled

The repo already has a `CNAME` file for `unstruct.com`.

## 2. GoDaddy DNS

You were on the **Settings** page. That is the wrong tab. Follow `GODADDY-DNS.md`.

Short version: DNS → delete Forwarding → point `@` A records at GitHub → point `www` at `buzzrocketgroup.github.io` → do not touch MX.

## 3. Gumroad ($4.99 + PDF delivery)

1. Sign up at https://gumroad.com. No monthly fee. Direct sales cost **10% + $0.50**, plus card processing around **2.9% + $0.30**. On **$4.99** you keep roughly **$3.50–$4.00**.
2. New digital product, price `4.99`, upload `dist\anti-slop-email-manual.pdf`
3. Paste copy from `gumroad-copy.md`
4. Put the product URL in `config.js` as `gumroadUrl` and push
5. Optional redirect after purchase: `https://unstruct.com/thanks.html`

## 4. Gmail template

Follow `email/gmail-setup.md`. The email now links to `https://unstruct.com/`.

## What I still cannot do from here

- Create the GitHub repo (`gh` is not installed)
- Edit GoDaddy DNS (your login is in your browser, not this session)
- Create the Gumroad product
- Save the Gmail template into your account
- A free `noreply@unstruct.com` mailbox — GoDaddy MX is already there, but a real mailbox is a paid GoDaddy email product
