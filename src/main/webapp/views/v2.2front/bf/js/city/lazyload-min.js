LazyLoad = function (m) {
    function s(a, b) {
        var g = m.createElement(a), c;
        for (c in b)b.hasOwnProperty(c) && g.setAttribute(c, b[c]);
        return g
    }

    function n(a) {
        var b = p[a], c, k;
        b && (c = b.callback, k = b.urls, k.shift(), d = 0, k.length || (c && c.call(b.context, b.obj), p[a] = null, q[a].length && l(a)))
    }

    function z() {
        var a = navigator.userAgent;
        c = {async: !0 === m.createElement("script").async};
        (c.webkit = /AppleWebKit\//.test(a)) || (c.ie = /MSIE/.test(a)) || (c.opera = /Opera/.test(a)) || (c.gecko = /Gecko\//.test(a)) || (c.unknown = !0)
    }

    function l(a, b, g, k, d) {
        var l =
            function () {
                n(a)
            }, r = "css" === a, t = [], e, h, f, u;
        c || z();
        if (b)if (b = "string" === typeof b ? [b] : b.concat(), r || c.async || c.gecko || c.opera)q[a].push({
            urls: b,
            callback: g,
            obj: k,
            context: d
        }); else for (e = 0, h = b.length; e < h; ++e)q[a].push({
            urls: [b[e]],
            callback: e === h - 1 ? g : null,
            obj: k,
            context: d
        });
        if (!p[a] && (u = p[a] = q[a].shift())) {
            v || (v = m.head || m.getElementsByTagName("head")[0]);
            b = u.urls;
            e = 0;
            for (h = b.length; e < h; ++e)g = b[e], r ? f = c.gecko ? s("style") : s("link", {
                href: g,
                rel: "stylesheet"
            }) : (f = s("script", {src: g}), f.async = !1), f.className = "lazyload",
                f.setAttribute("charset", "utf-8"), c.ie && !r && 10 > A.Version() ? f.onreadystatechange = function () {
                /loaded|complete/.test(f.readyState) && (f.onreadystatechange = null, l())
            } : r && (c.gecko || c.webkit) ? c.webkit ? (u.urls[e] = f.href, w()) : (f.innerHTML = '@import "' + g + '";', x(f)) : f.onload = f.onerror = l, t.push(f);
            e = 0;
            for (h = t.length; e < h; ++e)v.appendChild(t[e])
        }
    }

    function x(a) {
        var b;
        try {
            b = !!a.sheet.cssRules
        } catch (c) {
            d += 1;
            200 > d ? setTimeout(function () {
                x(a)
            }, 50) : b && n("css");
            return
        }
        n("css")
    }

    function w() {
        var a = p.css, b;
        if (a) {
            for (b = y.length; 0 <= --b;)if (y[b].href === a.urls[0]) {
                n("css");
                break
            }
            d += 1;
            a && (200 > d ? setTimeout(w, 50) : n("css"))
        }
    }

    var c, v, p = {}, d = 0, q = {css: [], js: []}, y = m.styleSheets, A = {
        Version: function () {
            var a = 999;
            -1 != navigator.appVersion.indexOf("MSIE") && (a = parseFloat(navigator.appVersion.split("MSIE")[1]));
            return a
        }
    };
    return {
        css: function (a, b, c, d) {
            l("css", a, b, c, d)
        }, js: function (a, b, c, d) {
            l("js", a, b, c, d)
        }
    }
}(this.document);
