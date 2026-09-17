# GoDaddy: point unstruct.com at the site

You are on **Settings**. That page is nameservers, contacts, renew. Leave it.

The domain is parked on GoDaddy’s lander (`/lander`). Mail already works through GoDaddy (`smtp.secureserver.net` / `mailstore1.secureserver.net`). We will only change web records. **Do not delete MX, NS, or SOA.**

## 1. Open DNS

On the left of that unstruct.com screen, click **DNS**.  
If you only see Settings, click the domain name in the portfolio first, then **DNS**.

Official path: [Remove domain forwarding](https://www.godaddy.com/help/remove-my-domain-forwarding-19979) then edit records.

## 2. Turn off forwarding

DNS → **Forwarding**.

If the root domain is forwarded, **Delete** it.  
Forwarding locks the `@` A records to `13.248.213.45` and `76.223.67.189`. GitHub cannot take over until that lock is gone.

## 3. Change only these web records

| Type | Name | Current (leave if not this) | New value |
| --- | --- | --- | --- |
| A | `@` | `13.248.213.45` | `185.199.108.153` |
| A | `@` | `76.223.67.189` | `185.199.109.153` |
| A | `@` | *(add two more)* | `185.199.110.153` |
| A | `@` | *(add)* | `185.199.111.153` |
| CNAME | `www` | `unstruct.com` | `buzzrocketgroup.github.io` |

TTL: 600 if GoDaddy lets you, otherwise the default is fine.

**Do not touch**

- MX `smtp.secureserver.net`
- MX `mailstore1.secureserver.net`
- NS `ns67` / `ns68.domaincontrol.com`

## 4. What you should see when it worked

- `unstruct.com` loads the UNSLOP page (after the GitHub repo is live)
- `www.unstruct.com` loads the same page
- Existing `@unstruct.com` mail still arrives

GitHub’s certificate can take up to an hour after DNS answers. If the site loads on HTTP but HTTPS warns, wait and tick **Enforce HTTPS** in the GitHub Pages settings once it is offered.

## Optional later: `noreply@unstruct.com`

MX is already on GoDaddy, so a mailbox is possible. That is a paid GoDaddy email product, not free. The Gmail template still sends from your normal Gmail until you add **Send mail as** for an address that exists.
