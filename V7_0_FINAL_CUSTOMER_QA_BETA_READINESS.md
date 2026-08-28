# FASH v7.0 — Final Customer Experience QA & Beta Readiness

## Final customer layer added
- Shared session bootstrap on customer pages
- Cookie-aware API requests continue through credentials: include
- Session restoration on page load
- Guest/account greeting support
- Frontend dependency checks
- Navbar presence check
- Customer-ready browser event
- API/database health endpoint

## Beta test checklist

### Guest
- [ ] Navbar loads
- [ ] Search works
- [ ] Categories load
- [ ] Product pages load
- [ ] Account clearly shows guest state
- [ ] Protected customer data does not leak

### Authentication
- [ ] Register
- [ ] Login
- [ ] Logout
- [ ] Refresh after login
- [ ] Session restores
- [ ] Cookies work
- [ ] Unauthorized API requests return 401

### Customer data
- [ ] Cart add/update/remove
- [ ] Cart persists after refresh/re-login
- [ ] Wishlist add/remove/persists
- [ ] Orders load
- [ ] Order details load
- [ ] Return request works
- [ ] Profile updates persist
- [ ] Notifications work
- [ ] Settings persist

### Backend
- [ ] GET /api/health returns database connected
- [ ] No migration errors on startup
- [ ] Database records verified for test actions

## Important
Passing JavaScript syntax checks does not replace live end-to-end testing. Run the app and test the checklist before inviting external beta users.
