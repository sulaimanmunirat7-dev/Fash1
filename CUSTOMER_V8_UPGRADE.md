# FASH Customer Experience — v8 Upgrade Notes

## What was done in this package

### Backend (Paystack / Nigeria)
- Added `backend/src/paystack.js` (initialize + verify helpers)
- New endpoints:
  - `GET  /api/payments/public-key`
  - `POST /api/checkout/initialize`  — creates pending order from cart, returns Paystack access
  - `GET  /api/checkout/verify/:reference` — verifies payment, marks order paid, reduces stock, clears cart
- Orders table extended with `payment_reference`, `payment_status`, `paid_at`
- `.env.example` updated with `PAYSTACK_SECRET_KEY`, `PAYSTACK_PUBLIC_KEY`, `CURRENCY=NGN`
- `CLIENT_URL` should include your frontend origin (e.g. `http://localhost:5000,http://localhost:5173`)

### Design system (less “AI default”)
- New colour direction: near-black ink + warm cream paper + terracotta accent (not generic blue + Inter)
- Typography switched toward **Outfit**
- Shared product-card, button, form, empty-state, price (₦) patterns in `css/variables.css` + `css/fash-design-system.css`

### Frontend helpers
- `frontend/FASH/js/paystack-checkout.js` — drop-in Paystack popup for checkout page
  - Add a button: `<button id="fash-pay-btn" class="btn btn-accent">Pay with Paystack</button>`
  - Include the script after your API client

### Still for you to complete / configure
1. Put real Paystack **test** keys in `backend/.env`
2. On the checkout page, include `paystack-checkout.js` and ensure the user is logged in (cart is auth-backed)
3. Run the full guest → register → add to cart → Paystack test payment → order appears path
4. Guest cart merge (localStorage → server cart on login) can be finished next if still incomplete in your current JS
5. Full migration to React/Next remains recommended for long-term scale; this package keeps the existing stack working while you ship beta

## How to run

```bash
cd backend
cp .env.example .env
# edit DATABASE_URL, JWT_SECRET, PAYSTACK_* keys, CLIENT_URL
npm install
npm start
```

Open http://localhost:5000/

## Design direction going forward
- Prefer cream/ink/terracotta over blue gradients
- Use Outfit (or another distinctive family), not Inter everywhere
- Fewer floating shadows, tighter product cards, clearer empty states
- Always show prices as ₦ for Nigeria

## Priority after this ZIP
1. Wire the Pay button on checkout.html and test with Paystack test cards
2. Confirm order appears under My Orders after successful payment
3. Mobile pass on Home / Shop / Product / Cart / Checkout
4. Then deepen seller tools and admin moderation

---

## Full UI Upgrade (this pass)

Shared foundation rewritten:
- `variables.css` — ink / cream / terracotta tokens
- `fash-design-system.css` — buttons, cards, forms, grids, badges, overrides
- `navbar.css`, `footer.css`, `global.css`, `style.css`

Page-level CSS upgraded:
- home, shop, product, cart, checkout, auth (login/register)
- orders, wishlist, account, returns, success

Design system CSS injected into index + 19 key customer pages.
Checkout page: Paystack script + `#fash-pay-btn` wired.

### Look direction
- Near-black ink, warm cream paper, terracotta accent
- Outfit typeface (not Inter)
- Softer shadows, tighter radius, cleaner product cards
- ₦ pricing emphasis for Nigeria
