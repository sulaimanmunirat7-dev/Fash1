# FASH v3 CORS Fix

Fixed the local development CORS error:

Origin not allowed by CORS

## Development
The backend now allows requests from any localhost or 127.0.0.1 port when NODE_ENV is not production. This supports VS Code Live Server and similar local servers.

## Production
When NODE_ENV=production, use CLIENT_URL to explicitly configure the allowed frontend origin(s).
