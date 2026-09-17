(function () {
  var cfg = window.UNSLOP || {};
  var url = (cfg.gumroadUrl || "").trim();
  var ready = /^https?:\/\/\S+/i.test(url);

  document.querySelectorAll(".js-price").forEach(function (el) {
    el.textContent = cfg.price || "4.99";
  });
  document.querySelectorAll(".js-compare").forEach(function (el) {
    el.textContent = cfg.compareAt || "47";
  });

  if (!ready) {
    document.body.classList.add("needs-setup");
  }

  document.querySelectorAll(".js-buy").forEach(function (el) {
    if (ready) {
      el.setAttribute("href", url);
      el.setAttribute("target", "_blank");
      el.setAttribute("rel", "noopener noreferrer");
    } else {
      el.addEventListener("click", function (event) {
        event.preventDefault();
        alert("Checkout is not connected yet. Paste your Gumroad product URL into config.js.");
      });
    }
  });
})();
