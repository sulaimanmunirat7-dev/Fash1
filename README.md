# FASH — Connected Frontend + Backend

## Run the project

### 1. Make sure PostgreSQL is running
The backend uses the `.env` file in `backend/`.

### 2. Open PowerShell in this folder

Run:

    cd backend
    npm install
    npm.cmd start

The backend now serves the FASH frontend too.

Open:

    http://localhost:5000/

## Connected API features

- POST /api/auth/register
- POST /api/auth/login
- GET /api/auth/me
- GET /api/products
- POST /api/products
- GET /api/products/my
- PATCH /api/products/:id
- DELETE /api/products/:id

The seller login/session uses the backend JWT rather than the old frontend password storage.

Seller product creation, listing, editing and deletion use PostgreSQL through the API.

## Important

Do not open the HTML files directly with file://.
Run the backend and use http://localhost:5000/ so API requests and frontend paths work correctly.


## Product system
Seller products are stored in PostgreSQL in the `products` table. Approved sellers can create, edit, and delete their own products. The public `/api/products` endpoint feeds database products into the marketplace while preserving the existing static FASH catalog.

## FASH Homepage + Promotion Update

- Approved seller products are now available through `/api/products` and the Shop.
- The homepage has a live `New from FASH Sellers` section that reads from the database.
- The homepage also has a `Featured Products` / `Promoted on FASH` section backed by `/api/products/featured`.
- Product promotion is future-ready with `is_featured`, `featured_until`, and `featured_position` columns.
- Admin-only endpoint: `PATCH /api/admin/products/:id/featured` with `{ "featured": true, "featuredUntil": "2026-12-31T23:59:59Z", "featuredPosition": 1 }`.
- New seller products are only public after the seller is approved.
- A future-ready `stores` table is included so seller store promotion can be added without redesigning the database.

---

## v8 Customer / Paystack (Nigeria)

See **CUSTOMER_V8_UPGRADE.md** for full details.

Quick env additions in `backend/.env`:

```
PAYSTACK_SECRET_KEY=sk_test_...
PAYSTACK_PUBLIC_KEY=pk_test_...
CURRENCY=NGN
CLIENT_URL=http://localhost:5000
```

Checkout flow:
1. Customer logs in and adds items to cart
2. Checkout calls `POST /api/checkout/initialize`
3. Paystack popup collects payment
4. Frontend calls `GET /api/checkout/verify/:reference`
5. Order is marked paid, stock reduced, cart cleared

Design system updated toward a warmer, less generic look (ink + cream + terracotta, Outfit typeface). Load `css/variables.css` + `css/fash-design-system.css` on customer pages.
