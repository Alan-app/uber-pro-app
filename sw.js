/* MetaDriver v3 - Service Worker intentionally disabled during development.
   Reason: avoid cache issues, mixed versions, and forced uninstall/clear-cache flows.
   Reintroduce a proper SW later for clients. */
self.addEventListener("install", () => self.skipWaiting());
self.addEventListener("activate", (event) => {
  event.waitUntil(self.clients.claim());
});
