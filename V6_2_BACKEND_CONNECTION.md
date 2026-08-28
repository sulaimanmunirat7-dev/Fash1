# FASH v6.2 Backend Connection

## What is connected
A shared frontend API client is now available on every FASH page:

`window.FASH_API`

Local development automatically uses:

`http://localhost:5000`

when the frontend is running from `localhost` or `127.0.0.1`.

## Authentication helpers
- `FASH_API.register(payload)`
- `FASH_API.login(credentials)`
- `FASH_API.getCurrentUser()`
- `FASH_API.logout()`

The client automatically:
- sends the Bearer token when available
- uses JSON for normal API payloads
- supports FormData
- includes credentials
- reports backend errors cleanly

## Local setup
1. In `backend`, create `.env` from `.env.example`.
2. Set your PostgreSQL credentials and JWT secret.
3. Start the backend:
   `npm.cmd start`
4. Start the frontend with a local web server, such as Live Server.

The frontend should then call the backend at `http://localhost:5000`.

## Important
Existing page-specific authentication/product/cart code was not blindly replaced because endpoint and payload names must match the existing backend. This release adds the shared connection layer and documents the integration points without risking another navbar regression.
