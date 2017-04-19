$(document).on("turbolinks:load", (function() {
<<<<<<< HEAD
  var qs, js, q, s, d = document,
    gi = d.getElementById,
    ce = d.createElement,
    gt = d.getElementsByTagName,
    id = "typef_orm_share",
    b = "https://s3-eu-west-1.amazonaws.com/share.typeform.com/";
  if (!gi.call(d, id)) {
    js = ce.call(d, "script");
    js.id = id;
    js.src = b + "share.js";
    q = gt.call(d, "script")[0];
    q.parentNode.insertBefore(js, q);
  }
}));
=======
      var qs, js, q, s, d = document,
        gi = d.getElementById,
        ce = d.createElement,
        gt = d.getElementsByTagName,
        id = "typef_orm_share",
        b = "https://s3-eu-west-1.amazonaws.com/share.typeform.com/";
      if (!gi.call(d, id)) {
        js = ce.call(d, "script");
        js.id = id;
        js.src = b + "share.js";
        q = gt.call(d, "script")[0];
        q.parentNode.insertBefore(js, q);
      }
    })();
>>>>>>> 0dd368bbd27f05cfaad9aaf9e9870cd4af2aa544
