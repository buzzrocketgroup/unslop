# Gmail: template + optional filter

You send from your normal Gmail. The message is styled as a marketing email. That is as close as Gmail gets to “no-reply” without a second address.

## 1. Turn templates on

1. Gmail → Settings (gear) → **See all settings**
2. **Advanced** tab
3. **Templates** → Enable → Save changes

## 2. Save the template

1. Open `email/template.html` in a browser
2. Copy the black email block
3. Gmail → Compose → paste
4. Subject: `Your LinkedIn scrape is showing`
5. Compose window → three dots → **Templates → Save draft as template → Save as new template**
6. Name it `UNSLOP`

Use it with: Compose or Reply → three dots → **Templates → UNSLOP**.

A Reply will not change Gmail’s subject line. The body now opens with **Subject: Your LinkedIn scrape is showing** so the line still lands. If you already saved an older template, overwrite it: insert the new copy, then three dots → **Templates → Save draft as template → Save over existing template → UNSLOP**.

## 3. Optional auto-reply filter

Gmail can send the template automatically. This is the risky path.

**What can go wrong**

- A real person using a weak template gets roasted
- Two autoresponders loop
- Your name is on the From line, so the roast is yours
- Some harvest bots never read mail and you just wasted the gesture

**Safer start:** use the template by hand for a week. Turn the filter on only if the pattern is obvious and you can live with a miss.

**Suggested filter**

1. Gmail → Settings → **Filters and Blocked Addresses** → **Create a new filter**
2. **Has the words:**

```
("I came across your profile" OR "came across your profile" OR "impressed by your work" OR "I'd love to pick your brain" OR "love to pick your brain" OR "fellow innovator" OR "leverage synergies" OR "unlock growth" OR "quick 15-minute" OR "quick 15 minutes")
```

3. Create filter
4. Check **Skip the Inbox** only if you also want them out of the way (optional)
5. Check **Send template** → `UNSLOP`
6. Do **not** check “Mark as spam”
7. Create filter

If Gmail does not show **Send template**, templates are not enabled, or you are on an account that hides the action. Use the manual template.

**Do not** also star, forward, or apply a second auto-reply on the same filter.
