# FASH Customer Experience — v6.3.1 Starting Upgrade

## Completed in this upgrade
- Added server-issued HttpOnly `fash_auth` browser session cookie on customer registration and login.
- Updated backend authentication middleware to accept either Bearer JWTs or the HttpOnly cookie.
- Added `GET /api/auth/me` for restoring a customer session after refresh.
- Updated logout to clear the server-side browser cookie.
- Updated frontend API client with `restoreSession()` and backend logout.
- Added customer session bootstrap on frontend pages.

## Still to build
1. Email verification codes
2. Google login
3. Forgot-password code flow
4. Database-backed cart
5. Database-backed wishlist
6. Guest-cart merge
7. Complete checkout/payment flow
8. End-to-end orders, notifications and returns verification
9. Full customer QA

## Immediate test sequence
1. Start PostgreSQL.
2. Configure `backend/.env` with DATABASE_URL and JWT_SECRET.
3. Start backend with `npm.cmd start`.
4. Open the frontend through an HTTP server.
5. Register a new customer.
6. Confirm a `fash_auth` HttpOnly cookie is issued.
7. Refresh and confirm `/api/auth/me` restores the customer.
8. Log out and confirm the cookie is cleared.
