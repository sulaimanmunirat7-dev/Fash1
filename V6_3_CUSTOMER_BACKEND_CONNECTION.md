# FASH v6.3 — Customer Features Connected to Backend

## Shared backend services added
- Products and categories
- Search
- Cart
- Orders
- Wishlist / saved items
- Notifications

## Shared browser APIs
- `FASH_CUSTOMER_API.products`
- `FASH_CUSTOMER_API.cart`
- `FASH_CUSTOMER_API.orders`
- `FASH_CUSTOMER_API.wishlist`
- `FASH_CUSTOMER_API.notifications`

## Interaction bridge
Common frontend controls can now call the backend:
- Add-to-cart controls
- Save/wishlist controls
- Search forms

## Important
The project contains existing frontend markup and backend routes that may use different endpoint names or payload shapes. The service layer tries the project's common endpoint patterns, but authenticated customer data must still be tested against the running backend/database.

## Test order
1. Start PostgreSQL and configure backend `.env`
2. Start backend: `npm.cmd start`
3. Open frontend through a local server
4. Sign in
5. Test products/categories/search
6. Test add/update/remove cart
7. Test saved items
8. Test orders
9. Test notifications
