# FASH v6.7 Cart & Wishlist Persistence

## What this release adds
- Shared customer data client for cart and wishlist actions.
- Database-safe schema checks for carts, cart_items and wishlist_items.
- Unique cart item and saved-item constraints to prevent duplicates.
- API methods continue to use the existing backend endpoints.

## Manual database verification
1. Log in with a test account.
2. Add a product to cart.
3. Call GET /api/cart.
4. Restart the frontend/backend and sign in again.
5. Confirm the cart item remains.
6. Check PostgreSQL:
   SELECT * FROM carts;
   SELECT * FROM cart_items;
7. Add a product to wishlist.
8. Check:
   SELECT * FROM wishlist_items;

## Important
Run the existing backend migration/startup process before testing. If your schema already has equivalent tables, this release does not require duplicate tables.
