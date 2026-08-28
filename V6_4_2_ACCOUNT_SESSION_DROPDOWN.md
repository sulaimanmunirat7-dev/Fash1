# FASH v6.4.2 Account Session & Dropdown Update

## Updated
- Guest state is compact and directs users to registration.
- New signup shows `Welcome, FirstName` once after registration.
- Returning session shows `Welcome back, FirstName`.
- `full_name` is now recognised consistently by the navbar.
- Logged-in dropdown has one clear hierarchy: account summary, orders, saved items, notifications, settings, sign out.
- Seller Dashboard appears only for recognised seller accounts.
- Seller-specific management links were removed from the customer dropdown.
- Dropdown stacking and mobile width were refined.

## Manual test
1. Open the site logged out: Account should lead to registration.
2. Register a new user: Account should show `Welcome, Name`.
3. Refresh or return later: Account should show `Welcome back, Name`.
4. Normal customer: no Seller Dashboard.
5. Seller: Seller Dashboard appears.
