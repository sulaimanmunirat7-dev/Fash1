# FASH v6.8 — Orders, Checkout & Returns

## Added
- Checkout/order frontend client
- Customer orders endpoint
- Individual order endpoint
- Return request endpoint

## Test flow
1. Log in.
2. Add products to cart.
3. Complete checkout.
4. Verify the order appears through GET /api/orders.
5. Open an individual order.
6. Request a return.
7. Verify records in the database.

## Database checks
SELECT * FROM orders ORDER BY created_at DESC;
SELECT * FROM returns ORDER BY created_at DESC;

The existing checkout/order creation flow remains the source of truth.
