! function(n) {
    function t(r) {
        if (e[r]) return e[r].exports;
        var o = e[r] = {
            i: r,
            l: !1,
            exports: {}
        };
        return n[r].call(o.exports, o, o.exports, t), o.l = !0, o.exports
    }
    var e = {};
    t.m = n, t.c = e, t.d = function(n, e, r) {
        t.o(n, e) || Object.defineProperty(n, e, {
            configurable: !1,
            enumerable: !0,
            get: r
        })
    }, t.n = function(n) {
        var e = n && n.__esModule ? function() {
            return n.default
        } : function() {
            return n
        };
        return t.d(e, "a", e), e
    }, t.o = function(n, t) {
        return Object.prototype.hasOwnProperty.call(n, t)
    }, t.p = "", t(t.s = 3)
}([function(n, t, e) {
    "use strict";
    e.d(t, "c", function() {
        return r
    }), e.d(t, "b", function() {
        return o
    }), e.d(t, "d", function() {
        return c
    }), e.d(t, "a", function() {
        return a
    });
    var r = (e(2), function(n, t, e) {
            void 0 === e && (e = window), e && e.addEventListener && e.addEventListener(n, t)
        }),
        o = function() {
            return window.location
        },
        c = function() {
            return window
        },
        i = function() {
            var n = document.readyState;
            "interactive" === n ? c().__sc_contentReadyCBs && (c().__sc_contentReadyCBs.forEach(function(n) {
                return n()
            }), delete c().__sc_contentReadyCBs) : "complete" === n && (c().__sc_contentReadyCBs && (c().__sc_contentReadyCBs.forEach(function(n) {
                return n()
            }), delete c().__sc_contentReadyCBs), c().__sc_domLoadedCBs && (c().__sc_domLoadedCBs.forEach(function(n) {
                return n()
            }), delete c().__sc_domLoadedCBs))
        };
    document && (document.onreadystatechange = i, document.addEventListener && (document.addEventListener("DOMContentLoaded", i), document.addEventListener("load", i)));
    var a = function() {
        function n() {}
        return n.stringify = function(n, t, e) {
            var r = c();
            return r && r.sc_json ? r.sc_json.stringify(n, t, e) : JSON.stringify(n, t, e)
        }, n.parse = function(n) {
            var t = c();
            return t && t.sc_json ? t.sc_json.parse(n) : JSON.parse(n)
        }, n
    }()
}, function(n, t, e) {
    "use strict";
    var r = function() {
        function n() {}
        return n.getQueryStringParameter = function(n, t) {
            void 0 === t && (t = window.location.href), n = n.replace(/[\[\]]/g, "\\$&");
            var e = new RegExp("[?&]" + n + "(=([^&#]*)|&|#|$)", "i"),
                r = e.exec(t);
            return r && r[2] ? decodeURIComponent(r[2].replace(/\+/g, " ")) : null
        }, n
    }();
    t.a = r
}, function(n, t, e) {
    "use strict";
    var r = e(9);
    e.n(r);
    t.a = r.Promise
}, function(n, t, e) {
    "use strict";
    Object.defineProperty(t, "__esModule", {
        value: !0
    });
    e(4)
}, function(n, t, e) {
    "use strict";
    var r = e(1),
        o = e(5),
        c = e(6),
        i = e(10),
        a = e(12),
        u = e(0),
        s = o.a();
    ! function() {
        var n = c.a(s);
        if (!n) {
            var t = r.a.getQueryStringParameter("sc_frame_id");
            return window.parent.postMessage(u.a.stringify({
                error: "FRAME_STORAGE_UNAVAILABLE",
                frameId: t
            }), "*")
        }
        var e = Object(a.a)(n);
        Object(i.a)(function(n, t) {
            if ("STORE" === n.messageType) return e.handleMessage(n, t);
            t()
        })
    }()
}, function(n, t, e) {
    "use strict";
    e.d(t, "a", function() {
        return r
    });
    var r = function() {
        return {
            canUseBeacon: null,
            canUseCookies: null,
            canUseLocalStorage: null,
            canUseMutationObserver: null,
            canUsePostMessage: null,
            canUseXDomain: null,
            canUseXhr: null,
            canUseXhrCors: null
        }
    }
}, function(n, t, e) {
    "use strict";
    e.d(t, "a", function() {
        return f
    });
    var r = e(7),
        o = (e.n(r), e(8)),
        c = (e.n(o), e(2)),
        i = e(0),
        a = Object(i.d)(),
        u = function() {
            function n() {
                r.flushExpired()
            }
            return Object.defineProperty(n.prototype, "Name", {
                get: function() {
                    return "LocalStorage"
                },
                enumerable: !0,
                configurable: !0
            }), n.prototype.getValue = function(n, t) {
                var e;
                if (t) try {
                    return c.a.resolve(a.localStorage.getItem(n))
                } catch (n) {
                    return c.a.reject(n)
                } else e = r.get("scls::" + n);
                if (!e || "object" == typeof e) return c.a.resolve(null);
                e.indexOf && 0 === e.indexOf("#::") && (e = o.decompressFromUTF16(e.substring("#::".length)));
                try {
                    "string" != typeof e || "{" !== e.charAt(0) && "[" !== e.charAt(0) || (e = i.a.parse(e))
                } catch (n) {}
                return c.a.resolve(e)
            }, n.prototype.setValue = function(n, t, e) {
                "object" == typeof t && (t = i.a.stringify(t));
                var a = o.compressToUTF16(t);
                return a = a.length > t.length ? "" + t : "#::" + a, r.set("scls::" + n, a, e), c.a.resolve(!0)
            }, n.prototype.removeValue = function(n) {
                return r.remove("scls::" + n), c.a.resolve(!0)
            }, n
        }(),
        s = function(n) {
            return null !== n.canUseLocalStorage && void 0 !== n.canUseLocalStorage ? n.canUseLocalStorage : (n.canUseLocalStorage = r.supported(), n.canUseLocalStorage)
        },
        f = function(n) {
            return s(n) ? new u : null
        }
}, function(n, t, e) {
    var r, o, c;
    ! function(e, i) {
        o = [], r = i, void 0 !== (c = "function" == typeof r ? r.apply(t, o) : r) && (n.exports = c)
    }(0, function() {
        function n() {
            var n = "__lscachetest__";
            if (void 0 !== d) return d;
            try {
                if (!localStorage) return !1
            } catch (n) {
                return !1
            }
            try {
                a(n, "__lscachetest__"), u(n), d = !0
            } catch (n) {
                d = !(!t(n) || !localStorage.length)
            }
            return d
        }

        function t(n) {
            return !!(n && "QUOTA_EXCEEDED_ERR" === n.name || "NS_ERROR_DOM_QUOTA_REACHED" === n.name || "QuotaExceededError" === n.name)
        }

        function e() {
            return void 0 === h && (h = null != window.JSON), h
        }

        function r(n) {
            return n.replace(/[[\]{}()*+?.\\^$|]/g, "\\$&")
        }

        function o(n) {
            return n + v
        }

        function c() {
            return Math.floor((new Date).getTime() / g)
        }

        function i(n) {
            return localStorage.getItem(m + w + n)
        }

        function a(n, t) {
            localStorage.removeItem(m + w + n), localStorage.setItem(m + w + n, t)
        }

        function u(n) {
            localStorage.removeItem(m + w + n)
        }

        function s(n) {
            for (var t = new RegExp("^" + m + r(w) + "(.*)"), e = localStorage.length - 1; e >= 0; --e) {
                var c = localStorage.key(e);
                c = c && c.match(t), c = c && c[1], c && c.indexOf(v) < 0 && n(c, o(c))
            }
        }

        function f(n) {
            var t = o(n);
            u(n), u(t)
        }

        function l(n) {
            var t = o(n),
                e = i(t);
            if (e) {
                var r = parseInt(e, y);
                if (c() >= r) return u(n), u(t), !0
            }
        }

        function p(n, t) {
            E && "console" in window && "function" == typeof window.console.warn && (window.console.warn("lscache - " + n), t && window.console.warn("lscache - The error was: " + t.message))
        }
        var d, h, m = "lscache-",
            v = "-cacheexpiration",
            y = 10,
            g = 6e4,
            _ = Math.floor(864e13 / g),
            w = "",
            E = !1;
        return {
            set: function(r, l, d) {
                if (n() && e()) {
                    try {
                        l = JSON.stringify(l)
                    } catch (n) {
                        return
                    }
                    try {
                        a(r, l)
                    } catch (n) {
                        if (!t(n)) return void p("Could not add item with key '" + r + "'", n);
                        var h, m = [];
                        s(function(n, t) {
                            var e = i(t);
                            e = e ? parseInt(e, y) : _, m.push({
                                key: n,
                                size: (i(n) || "").length,
                                expiration: e
                            })
                        }), m.sort(function(n, t) {
                            return t.expiration - n.expiration
                        });
                        for (var v = (l || "").length; m.length && v > 0;) h = m.pop(), p("Cache is full, removing item with key '" + r + "'"), f(h.key), v -= h.size;
                        try {
                            a(r, l)
                        } catch (n) {
                            return void p("Could not add item with key '" + r + "', perhaps it's too big?", n)
                        }
                    }
                    d ? a(o(r), (c() + d).toString(y)) : u(o(r))
                }
            },
            get: function(t) {
                if (!n()) return null;
                if (l(t)) return null;
                var r = i(t);
                if (!r || !e()) return r;
                try {
                    return JSON.parse(r)
                } catch (n) {
                    return r
                }
            },
            remove: function(t) {
                n() && f(t)
            },
            supported: function() {
                return n()
            },
            flush: function() {
                n() && s(function(n) {
                    f(n)
                })
            },
            flushExpired: function() {
                n() && s(function(n) {
                    l(n)
                })
            },
            setBucket: function(n) {
                w = n
            },
            resetBucket: function() {
                w = ""
            },
            enableWarnings: function(n) {
                E = n
            }
        }
    })
}, function(n, t, e) {
    var r, o = function() {
        function n(n, t) {
            if (!o[n]) {
                o[n] = {};
                for (var e = 0; e < n.length; e++) o[n][n.charAt(e)] = e
            }
            return o[n][t]
        }
        var t = String.fromCharCode,
            e = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
            r = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-$",
            o = {},
            c = {
                compressToBase64: function(n) {
                    if (null == n) return "";
                    var t = c._compress(n, 6, function(n) {
                        return e.charAt(n)
                    });
                    switch (t.length % 4) {
                        default:
                            case 0:
                            return t;
                        case 1:
                                return t + "===";
                        case 2:
                                return t + "==";
                        case 3:
                                return t + "="
                    }
                },
                decompressFromBase64: function(t) {
                    return null == t ? "" : "" == t ? null : c._decompress(t.length, 32, function(r) {
                        return n(e, t.charAt(r))
                    })
                },
                compressToUTF16: function(n) {
                    return null == n ? "" : c._compress(n, 15, function(n) {
                        return t(n + 32)
                    }) + " "
                },
                decompressFromUTF16: function(n) {
                    return null == n ? "" : "" == n ? null : c._decompress(n.length, 16384, function(t) {
                        return n.charCodeAt(t) - 32
                    })
                },
                compressToUint8Array: function(n) {
                    for (var t = c.compress(n), e = new Uint8Array(2 * t.length), r = 0, o = t.length; r < o; r++) {
                        var i = t.charCodeAt(r);
                        e[2 * r] = i >>> 8, e[2 * r + 1] = i % 256
                    }
                    return e
                },
                decompressFromUint8Array: function(n) {
                    if (null === n || void 0 === n) return c.decompress(n);
                    for (var e = new Array(n.length / 2), r = 0, o = e.length; r < o; r++) e[r] = 256 * n[2 * r] + n[2 * r + 1];
                    var i = [];
                    return e.forEach(function(n) {
                        i.push(t(n))
                    }), c.decompress(i.join(""))
                },
                compressToEncodedURIComponent: function(n) {
                    return null == n ? "" : c._compress(n, 6, function(n) {
                        return r.charAt(n)
                    })
                },
                decompressFromEncodedURIComponent: function(t) {
                    return null == t ? "" : "" == t ? null : (t = t.replace(/ /g, "+"), c._decompress(t.length, 32, function(e) {
                        return n(r, t.charAt(e))
                    }))
                },
                compress: function(n) {
                    return c._compress(n, 16, function(n) {
                        return t(n)
                    })
                },
                _compress: function(n, t, e) {
                    if (null == n) return "";
                    var r, o, c, i = {},
                        a = {},
                        u = "",
                        s = "",
                        f = "",
                        l = 2,
                        p = 3,
                        d = 2,
                        h = [],
                        m = 0,
                        v = 0;
                    for (c = 0; c < n.length; c += 1)
                        if (u = n.charAt(c), Object.prototype.hasOwnProperty.call(i, u) || (i[u] = p++, a[u] = !0), s = f + u, Object.prototype.hasOwnProperty.call(i, s)) f = s;
                        else {
                            if (Object.prototype.hasOwnProperty.call(a, f)) {
                                if (f.charCodeAt(0) < 256) {
                                    for (r = 0; r < d; r++) m <<= 1, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++;
                                    for (o = f.charCodeAt(0), r = 0; r < 8; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1
                                } else {
                                    for (o = 1, r = 0; r < d; r++) m = m << 1 | o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o = 0;
                                    for (o = f.charCodeAt(0), r = 0; r < 16; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1
                                }
                                l--, 0 == l && (l = Math.pow(2, d), d++), delete a[f]
                            } else
                                for (o = i[f], r = 0; r < d; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1;
                            l--, 0 == l && (l = Math.pow(2, d), d++), i[s] = p++, f = String(u)
                        }
                    if ("" !== f) {
                        if (Object.prototype.hasOwnProperty.call(a, f)) {
                            if (f.charCodeAt(0) < 256) {
                                for (r = 0; r < d; r++) m <<= 1, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++;
                                for (o = f.charCodeAt(0), r = 0; r < 8; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1
                            } else {
                                for (o = 1, r = 0; r < d; r++) m = m << 1 | o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o = 0;
                                for (o = f.charCodeAt(0), r = 0; r < 16; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1
                            }
                            l--, 0 == l && (l = Math.pow(2, d), d++), delete a[f]
                        } else
                            for (o = i[f], r = 0; r < d; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1;
                        l--, 0 == l && (l = Math.pow(2, d), d++)
                    }
                    for (o = 2, r = 0; r < d; r++) m = m << 1 | 1 & o, v == t - 1 ? (v = 0, h.push(e(m)), m = 0) : v++, o >>= 1;
                    for (;;) {
                        if (m <<= 1, v == t - 1) {
                            h.push(e(m));
                            break
                        }
                        v++
                    }
                    return h.join("")
                },
                decompress: function(n) {
                    return null == n ? "" : "" == n ? null : c._decompress(n.length, 32768, function(t) {
                        return n.charCodeAt(t)
                    })
                },
                _decompress: function(n, e, r) {
                    var o, c, i, a, u, s, f, l = [],
                        p = 4,
                        d = 4,
                        h = 3,
                        m = "",
                        v = [],
                        y = {
                            val: r(0),
                            position: e,
                            index: 1
                        };
                    for (o = 0; o < 3; o += 1) l[o] = o;
                    for (i = 0, u = Math.pow(2, 2), s = 1; s != u;) a = y.val & y.position, y.position >>= 1, 0 == y.position && (y.position = e, y.val = r(y.index++)), i |= (a > 0 ? 1 : 0) * s, s <<= 1;
                    switch (i) {
                        case 0:
                            for (i = 0, u = Math.pow(2, 8), s = 1; s != u;) a = y.val & y.position, y.position >>= 1, 0 == y.position && (y.position = e, y.val = r(y.index++)), i |= (a > 0 ? 1 : 0) * s, s <<= 1;
                            f = t(i);
                            break;
                        case 1:
                            for (i = 0, u = Math.pow(2, 16), s = 1; s != u;) a = y.val & y.position, y.position >>= 1, 0 == y.position && (y.position = e, y.val = r(y.index++)), i |= (a > 0 ? 1 : 0) * s, s <<= 1;
                            f = t(i);
                            break;
                        case 2:
                            return ""
                    }
                    for (l[3] = f, c = f, v.push(f);;) {
                        if (y.index > n) return "";
                        for (i = 0, u = Math.pow(2, h), s = 1; s != u;) a = y.val & y.position, y.position >>= 1, 0 == y.position && (y.position = e, y.val = r(y.index++)), i |= (a > 0 ? 1 : 0) * s, s <<= 1;
                        switch (f = i) {
                            case 0:
                                for (i = 0, u = Math.pow(2, 8), s = 1; s != u;) a = y.val & y.position, y.position >>= 1, 0 == y.position && (y.position = e, y.val = r(y.index++)), i |= (a > 0 ? 1 : 0) * s, s <<= 1;
                                l[d++] = t(i), f = d - 1, p--;
                                break;
                            case 1:
                                for (i = 0, u = Math.pow(2, 16), s = 1; s != u;) a = y.val & y.position, y.position >>= 1, 0 == y.position && (y.position = e, y.val = r(y.index++)), i |= (a > 0 ? 1 : 0) * s, s <<= 1;
                                l[d++] = t(i), f = d - 1, p--;
                                break;
                            case 2:
                                return v.join("")
                        }
                        if (0 == p && (p = Math.pow(2, h), h++), l[f]) m = l[f];
                        else {
                            if (f !== d) return null;
                            m = c + c.charAt(0)
                        }
                        v.push(m), l[d++] = c + m.charAt(0), p--, c = m, 0 == p && (p = Math.pow(2, h), h++)
                    }
                }
            };
        return c
    }();
    void 0 !== (r = function() {
        return o
    }.call(t, e, t, n)) && (n.exports = r)
}, function(n, t, e) {
    var r, o = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(n) {
        return typeof n
    } : function(n) {
        return n && "function" == typeof Symbol && n.constructor === Symbol && n !== Symbol.prototype ? "symbol" : typeof n
    };
    ! function(c) {
        function i(n) {
            return "[object Array]" === Object.prototype.toString.call(n)
        }

        function a() {
            for (var n = 0; n < T.length; n++) T[n][0](T[n][1]);
            T = [], E = !1
        }

        function u(n, t) {
            T.push([n, t]), E || (E = !0, j(a, 0))
        }

        function s(n, t) {
            function e(n) {
                p(t, n)
            }

            function r(n) {
                h(t, n)
            }
            try {
                n(e, r)
            } catch (n) {
                r(n)
            }
        }

        function f(n) {
            var t = n.owner,
                e = t.state_,
                r = t.data_,
                o = n[e],
                c = n.then;
            if ("function" == typeof o) {
                e = O;
                try {
                    r = o(r)
                } catch (n) {
                    h(c, n)
                }
            }
            l(c, r) || (e === O && p(c, r), e === A && h(c, r))
        }

        function l(n, t) {
            var e;
            try {
                if (n === t) throw new TypeError("A promises callback cannot return that same promise.");
                if (t && ("function" == typeof t || "object" === (void 0 === t ? "undefined" : o(t)))) {
                    var r = t.then;
                    if ("function" == typeof r) return r.call(t, function(r) {
                        e || (e = !0, t !== r ? p(n, r) : d(n, r))
                    }, function(t) {
                        e || (e = !0, h(n, t))
                    }), !0
                }
            } catch (t) {
                return e || h(n, t), !0
            }
            return !1
        }

        function p(n, t) {
            n !== t && l(n, t) || d(n, t)
        }

        function d(n, t) {
            n.state_ === b && (n.state_ = S, n.data_ = t, u(v, n))
        }

        function h(n, t) {
            n.state_ === b && (n.state_ = S, n.data_ = t, u(y, n))
        }

        function m(n) {
            var t = n.then_;
            n.then_ = void 0;
            for (var e = 0; e < t.length; e++) f(t[e])
        }

        function v(n) {
            n.state_ = O, m(n)
        }

        function y(n) {
            n.state_ = A, m(n)
        }

        function g(n) {
            if ("function" != typeof n) throw new TypeError("Promise constructor takes a function argument");
            if (this instanceof g == !1) throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.");
            this.then_ = [], s(n, this)
        }
        var _ = c.Promise,
            w = _ && "resolve" in _ && "reject" in _ && "all" in _ && "race" in _ && function() {
                var n;
                return new _(function(t) {
                    n = t
                }), "function" == typeof n
            }();
        void 0 !== t && t ? (t.Promise = w ? _ : g, t.Polyfill = g) : void 0 !== (r = function() {
            return w ? _ : g
        }.call(t, e, t, n)) && (n.exports = r);
        var E, b = "pending",
            S = "sealed",
            O = "fulfilled",
            A = "rejected",
            R = function() {},
            j = "undefined" != typeof setImmediate ? setImmediate : setTimeout,
            T = [];
        g.prototype = {
            constructor: g,
            state_: b,
            then_: null,
            data_: void 0,
            then: function(n, t) {
                var e = {
                    owner: this,
                    then: new this.constructor(R),
                    fulfilled: n,
                    rejected: t
                };
                return this.state_ === O || this.state_ === A ? u(f, e) : this.then_.push(e), e.then
            },
            catch: function(n) {
                return this.then(null, n)
            }
        }, g.all = function(n) {
            var t = this;
            if (!i(n)) throw new TypeError("You must pass an array to Promise.all().");
            return new t(function(t, e) {
                for (var r, o = [], c = 0, i = 0; i < n.length; i++) r = n[i], r && "function" == typeof r.then ? r.then(function(n) {
                    return c++,
                        function(e) {
                            o[n] = e, --c || t(o)
                        }
                }(i), e) : o[i] = r;
                c || t(o)
            })
        }, g.race = function(n) {
            var t = this;
            if (!i(n)) throw new TypeError("You must pass an array to Promise.race().");
            return new t(function(t, e) {
                for (var r, o = 0; o < n.length; o++) r = n[o], r && "function" == typeof r.then ? r.then(t, e) : t(r)
            })
        }, g.resolve = function(n) {
            var t = this;
            return n && "object" === (void 0 === n ? "undefined" : o(n)) && n.constructor === t ? n : new t(function(t) {
                t(n)
            })
        }, g.reject = function(n) {
            return new this(function(t, e) {
                e(n)
            })
        }
    }("undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : this)
}, function(n, t, e) {
    "use strict";
    e.d(t, "a", function() {
        return s
    });
    var r = e(1),
        o = e(0),
        c = e(11),
        i = (e.n(c), Object(o.d)()),
        a = function(n) {
            i.parent && i.parent !== i && i.parent.postMessage(o.a.stringify(n), "*")
        },
        u = function(n) {
            var t = n.channelGuid,
                e = n.ticket.ticketGuid;
            return function(n, r) {
                var o = {
                    channelGuid: t,
                    ticket: {
                        payload: r,
                        ticketGuid: e
                    }
                };
                n && (c.noop(), o.err = n), a(o)
            }
        },
        s = function(n) {
            Object(o.c)("message", function(t) {
                c.noop(), c.noop();
                try {
                    var e = "" !== t.data ? o.a.parse(t.data) : {};
                    e && e.ticket && n(e.ticket.payload, u(e))
                } catch (n) {
                    c.noop()
                }
            });
            var t = r.a.getQueryStringParameter("sc_frame_id");
            a({
                frameGuid: t,
                messageType: "FRAME_READY",
                payload: {},
                receiverUrl: Object(o.b)().href
            })
        }
}, function(n, t) {
    var e = function() {},
        r = function(n) {
            return console && console.log && "function" == typeof n ? n.bind(console) : e
        };
    n.exports = {
        groupEnd: r(console.groupEnd),
        groupStart: r(console.groupCollapsed),
        logError: r(console.error),
        logInfo: r(console.info),
        logObj: r(console.dir),
        logWarning: r(console.warn),
        noop: e
    }
}, function(n, t, e) {
    "use strict";
    e.d(t, "a", function() {
        return a
    });
    var r = function(n, t, e) {
            if (!n.name) return e("STOREHANDLER: Get: no name");
            t.getValue(n.name).then(function(n) {
                return e(null, n)
            }).catch(function(n) {
                return e(n)
            })
        },
        o = function(n, t, e) {
            return n.name ? n.value ? void t.setValue(n.name, n.value, n.expiresInMinutes).then(function(n) {
                return e(null, n)
            }).catch(function(n) {
                return e(n)
            }) : e("STOREHANDLER: Set: no value") : e("STOREHANDLER: Set: no name")
        },
        c = function(n, t, e) {
            if (!n.name) return e("STOREHANDLER: Remove: no name");
            t.removeValue(n.name).then(function(n) {
                return e(null, n)
            }).catch(function(n) {
                return e(n)
            })
        },
        i = function(n, t, e) {
            if (!n.payload) return e("STOREHANDLER: empty payload", null);
            if (!t) return e("STOREHANDLER: no store");
            switch (n.commandType) {
                case "GET":
                    r(n.payload, t, e);
                    break;
                case "SET":
                    o(n.payload, t, e);
                    break;
                case "REMOVE":
                    c(n.payload, t, e);
                    break;
                default:
                    e("unknown store command " + n.commandType, null)
            }
        },
        a = function(n) {
            return {
                handleMessage: function(t, e) {
                    return i(t, n, e)
                }
            }
        }
}]);
//# sourceMappingURL=bundle.js.map