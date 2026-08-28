# FASH Beta Testing Guide

## Beta readiness upgrades included
- Authentication rate limiting
- API rate limiting
- CORS allowlist support
- Security response headers
- Reduced JSON payload limit
- Email/password validation
- Safer global error handling
- Orders `updated_at` trigger and query indexes
- Basic automated sanity tests
- Removed `.env` and `node_modules` from release package

## Before starting
1. Copy `backend/.env.example` to `backend/.env`.
2. Set a strong `JWT_SECRET` and real PostgreSQL `DATABASE_URL`.
3. Run the database schema.
4. Run `npm install` inside `backend`.
5. Run `npm test`.
6. Start with `npm start`.

## Beta launch checklist
- [ ] Register a new customer
- [ ] Login/logout as customer
- [ ] Apply as seller
- [ ] Approve seller as admin
- [ ] Create/edit/delete seller product
- [ ] Add products to cart
- [ ] Complete order flow
- [ ] Verify stock reduction
- [ ] Test returns
- [ ] Test account and categories menus on desktop/mobile
- [ ] Test password/login failure rate limiting
- [ ] Back up database before every beta deployment

## Important beta limitations
Do not collect real money until payment verification/webhooks, refunds, transactional email, durable cloud image storage, and a production session strategy are completed. The next priority should be an end-to-end beta checkout using a sandbox payment provider.
