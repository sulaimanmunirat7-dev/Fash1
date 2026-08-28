# FASH v6.9 — Profile, Notifications & Settings

## Added
- Profile retrieval and update
- Notification list
- Mark one notification as read
- Mark all notifications as read
- Customer notification settings
- Shared frontend account client

## Test
1. Log in.
2. Load /api/account.
3. Update full name.
4. Confirm updated name persists after refresh.
5. Load /api/notifications.
6. Mark one notification as read.
7. Mark all as read.
8. Load settings.
9. Change settings and refresh.

## Database checks
SELECT * FROM users;
SELECT * FROM notifications ORDER BY created_at DESC;
SELECT * FROM user_settings;

## Important
If your existing schema uses different column names or table names, send the exact startup/database error so the migration can be aligned safely.
