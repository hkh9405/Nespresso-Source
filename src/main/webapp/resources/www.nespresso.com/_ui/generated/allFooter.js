/*! 2021-02-06 13:51  */ ! function(a, b, c) {
    "use strict";

    function d() {
        function a() {
            var a = n.getSelectedChannel();
            i = !1, p.toggleImmediateToScheduled(!0), p.toggleNumber(!0);
            var b = {
                bouton: h.buttons[a],
                maxDays: 4,
                minutesStep: 15,
                formSel: "#click2call-form",
                dateContainerRelSel: ".date-input",
                timeContainerRelSel: ".time-input",
                lang: e.lang
            };
            h.calendar = new LnkWcb.CalendarJquery(b), h.buttons[a].horaires()
        }

        function d() {
            k.off("click.click2Call").on("click.click2Call", "a", m.onClickOnTrigger)
        }

        function f(a) {
            return !(a.length < 6) || (o.warning("errorNumValide"), !1)
        }

        function g(a) {
            var c = [b.ui.keyCode.TAB, b.ui.keyCode.UP, b.ui.keyCode.DOWN, b.ui.keyCode.LEFT, b.ui.keyCode.RIGHT, b.ui.keyCode.SPACE, b.ui.keyCode.BACKSPACE, 43, 33, 35, 36, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56, 57, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105];
            return c.indexOf(a) > -1
        }
        var h = LnkWcb.inteBtn = LnkWcb.inteBtn || {},
            i = !0,
            j = e.triggers,
            k = null,
            l = b("#click2call-container"),
            m = {},
            n = {
                getCalleeNumber: function() {
                    var a = b("#click2call-number").val();
                    return a.replace(/[^\d]/g, "")
                },
                getSelectedDate: function() {
                    return h.calendar.getWcbDate()
                },
                getSelectedChannel: function() {
                    return b("#click2call-channels").find("input:checked").val()
                }
            },
            o = {
                jElem: b("#click2call-message"),
                status: function(a) {
                    o.jElem.attr("class", "").addClass("status"), o._shared(a)
                },
                warning: function(a) {
                    o.jElem.attr("class", "").addClass("warning"), o._shared(a)
                },
                _shared: function(a) {
                    return null === a && o.jElem.addClass("display-none"), "undefined" != typeof e.labels[a] && void o.jElem.html(e.labels[a])
                }
            },
            p = {
                hideScheduled: function() {
                    b("#click2call-inner-content").find(".scheduled").addClass("display-none")
                },
                toggleIntro: function(a) {
                    b("#click2call-inner-content").find(".intro").toggleClass("display-none", !a), b("#click2call-number-container").removeClass("place-right").addClass("pull-left")
                },
                toggleImmediateToScheduled: function(a) {
                    b("#click2call-inner-content").find(".immediate").toggleClass("display-none", a).end().find(".scheduled").toggleClass("display-none", !a)
                },
                toggleChannels: function(a) {
                    p.toggle(b("#click2call-channels"), a)
                },
                toggleNumber: function(a) {
                    b("#click2call-number")[0].disabled = !a, b("#click2call-go")[0].disabled = !a, b("#click2call-close")[0].disabled = !a
                },
                toggleButton: function(a) {
                    var c = b("#click2call-go"),
                        d = b("#click2call-close");
                    p.toggle(c, !a), c[0].disabled = a, p.toggle(d, a), d[0].disabled = !a
                },
                toggle: function(a, b) {
                    a.toggleClass("display-none", !b)
                },
                clear: function() {
                    b("#click2call-inner-content").find(".date").add("#click2call-number-container").addClass("display-none")
                },
                resetAll: function() {
                    i = !0, p.toggleImmediateToScheduled(!1), p.toggleChannels(!0), p.toggleButton(!1), p.toggleNumber(!0), p.toggleIntro(!0), b("#click2call-number").val(""), b("#click2call-channels").find(".channel input[type=radio]").each(function() {
                        this.checked = !1
                    }), b("#click2call-number-container").removeClass("display-none").removeClass("pull-left").addClass("place-right"), o.status(null)
                }
            };
        if (m.onChannelState = function(a) {
                var c = b("#click2call").find(".more"),
                    e = c.data("offline") || "",
                    f = a.estOuvert,
                    g = a.estActif,
                    h = a.peutRecevoirAppel;
                f === !1 ? c.html(e) : g && h && (k.show(), d(), this.onSendCall(m.onSendCall), this.onStatus(m.onStatus), this.onFallback(m.onFallback), this.onEnded(m.onEnded)), c.show()
            }, m.onEnded = function(b) {
                "KO" === b.status ? (o.warning("userEchec"), a()) : (p.toggleButton(!0), p.clear(), p.hideScheduled(), o.status("userEnd"))
            }, m.onFallback = function(b) {
                o.status(null), "KO" === b.status && a()
            }, m.onStatus = function(a) {
                switch (a.aStatus) {
                    case "APPEL_EN_COURS":
                        o.status("userChargement");
                        break;
                    case "COMMUNICATION_EN_COURS":
                        o.status("userChargement");
                        break;
                    case "MUSIQUE_ATTENTE":
                        o.status("userChargement");
                        break;
                    case "COMMUNICATION_ETABLIE":
                        o.status("userComEtablie")
                }
            }, m.onSendCall = function(a, b) {
                p.toggleNumber(!1), i ? (o.status("userChargement"), p.toggleChannels(!1), p.toggleIntro(!1)) : "delay" === b.t && (p.toggleButton(!0), p.clear(), p.hideScheduled(), o.status("userDelayOk"))
            }, m.onClickOnTrigger = function(a) {
                return a.preventDefault(), l.dialog({
                    autoOpen: !0,
                    draggable: !1,
                    width: l.data("width"),
                    resizable: !1,
                    modal: !0,
                    closeText: c.labels.close,
                    dialogClass: "popin-dialog-open dark",
                    clickOutside: !0,
                    show: {
                        effect: "fadeIn",
                        duration: 300
                    },
                    hide: {
                        effect: "fadeOut",
                        duration: 300
                    },
                    open: function() {
                        var a = b("#click2call-number");
                        b("#click2call-go").on("click", m.onClickOnGo), b("#click2call-close").on("click", m.onClickOnClose), a.on("keyup keydown", m.onKeyOnNumber)
                    },
                    close: function() {
                        p.resetAll()
                    }
                }), !1
            }, m.onKeyOnNumber = function(a) {
                var c = a.keyCode || a.which;
                return "keydown" === a.type ? g(c) : "keyup" === a.type && c === b.ui.keyCode.ENTER ? (m.onClickOnGo(), !1) : void 0
            }, m.onClickOnClose = function() {
                return l.dialog("close"), !1
            }, m.onClickOnGo = function() {
                var a = n.getSelectedChannel(),
                    c = n.getCalleeNumber();
                if (o.status(null), i) {
                    if (!c) return o.warning("errorNumValide"), b("#click2call-number-container").addClass("error"), !1;
                    if ("0" === c[0] && (c = e.prefix + c.slice(1)), b("#click2call-number-container").removeClass("error"), !a) return o.warning("errorChannel"), b("#click2call-channels").find("label.radio").addClass("error-radio"), !1;
                    b("#click2call-channels").find("label.radio").removeClass("error-radio"), h.buttons[a].rappeler(c)
                } else {
                    if (!c) return o.warning("errorNumValide"), b("#click2call-number-container").addClass("error"), !1;
                    "0" === c[0] && (c = e.prefix + c.slice(1)), h.buttons[a].rappeler(c, n.getSelectedDate())
                }
                return !1
            }, !l.length) return !1;
        k = j.length ? b(j.join(",")) : b();
        for (var q = b("#click2call-channels").find("input"), r = q.length - 1; r >= 0; r--) {
            var s = new LnkWcb.Bouton({
                canal: q[r].value,
                validator: f
            });
            s.onChannelState(m.onChannelState), s.estOuvert(), "undefined" == typeof h.buttons && (h.buttons = {}), h.buttons[q[r].value] = s
        }
    }
    var e = c.assistanceCallback;
    a({
        test: !e,
        nope: c.components.assistanceCallback,
        complete: function() {
            e && d()
        }
    })
}(yepnope, jQuery, config),
function(a, b, c) {
    "use strict";

    function d() {
        "undefined" != typeof isMarketOnline && User.onReady(function(b) {
            (b.isLoggedIn || a.liveChat.isLiveChatAnonymousEnabled) && (c("#live-chat-service-available").show(), c("#live-chat-service-unavailable").hide())
        })
    }

    function e() {
        a.liveChatVars && b({
            test: !a.liveChatVars,
            nope: a.liveChatVars.liveChatCheck,
            complete: function() {
                d()
            }
        })
    }
    e()
}(config, yepnope, jQuery),
function(a, b, c, d) {
    "use strict";
    var e = new RegExp("^recurringOrder");
    b.BlockingLoading = new BlockingLoadingFactory(a("#full-page-loader")), b.BlockingLoadingDiscreet = new BlockingLoadingFactory(a("#full-page-loader-discreet")), a(".blocking-loading").on("click", function() {
        b.BlockingLoading.show()
    }), a("#ta-back-to-top").on("click", function(b) {
        b.preventDefault(), a("#a11y-main-heading").focus()
    }), a(document).on("click", ".skip-links", function(a) {
        return handleClickOnSkipLinks(a, this)
    }), a(function() {
        a("form").validate();
        var b = pageStatusBuffer.get();
        b && (pageStatusBuffer.remove(), a11yFocusOnMessage(b));
        var c = cookieWrapper("focusOnButtonAfterLogin");
        c.get() && a11yFocusOnDescLogged(c)
    }), c.customerRead().catch(function() {
        Object.keys(d).filter(function(a) {
            return e.test(a)
        }).forEach(function(a) {
            d.removeItem(a)
        })
    })
}(jQuery, window, config.callbacks, safeSessionStorage()), $(function(a, b, c, d, e, f) {
        "use strict";

        function g(a) {
            var d = !!a && !!a.recaptureConsent,
                e = "true" === b.getItem(o),
                f = !!c.disableCaptureConsentLightbox;
            return d && !e && !f
        }

        function h() {
            b.setItem(o, "true")
        }

        function i(a) {
            a.find("button, a").prop("disabled", "disabled")
        }

        function j() {
            var a = $("#" + q);
            return $.ajax({
                url: a.data("content-url")
            })
        }

        function k(a) {
            $("#" + q).html(a)
        }

        function l() {
            $("#" + p).dialog({
                autoOpen: !0,
                modal: !0,
                resizable: !1,
                closeOnEscape: !0,
                clickOutside: !0,
                dialogClass: "ui-popin popin-dialog-open dark",
                effect: "fade",
                width: 800,
                duration: 800,
                close: h,
                open: function() {
                    var b = $(this),
                        c = b.parent();
                    if (0 === c.find(".lightbox__close-icon").length) {
                        var d = $('<i class="Glyph Glyph--cross lightbox__close-icon" aria-hidden="true" />');
                        c.find(".ui-dialog-titlebar-close").prepend(d)
                    }
                    b.find(".gdpr-consent-lightbox__change-preferences").on("click", function() {
                        var c = $(this).data("my-account-url");
                        customEventHelper.track({
                            category: "consent_recapture_update_my_preferences_click"
                        }), i(b), a.customerSendConsentRecapture().then(function() {
                            h(), window.location.assign(c)
                        })
                    }), b.find(".gdpr-consent-lightbox__keep-preferences").on("click", function() {
                        customEventHelper.track({
                            category: "consent_recapture_keep_my_preferences_click"
                        }), i(b), a.customerSendConsentRecapture().then(function() {
                            b.dialog("close")
                        })
                    })
                }
            })
        }

        function m() {
            var a = e.copyObject(e.extend(f.app, f.page));
            a && a.page && a.page.pageInfo && (a.page.pageInfo.pageName = "gdpr-consent-page", a.page.pageInfo.breadcrumbUID = "legal:::gdpr-consent-page:", a.page.pageInfo.primaryCategory = "legal", d.data().navigation().navigate(a))
        }

        function n() {
            a.customerRead().then(function(a) {
                g(a) && j().then(function(a) {
                    k(a), l(), m()
                })
            }).catch(function() {
                b.removeItem(o)
            })
        }
        var o = "captureConsentLightboxClosed",
            p = "gdpr-consent-lightbox",
            q = "gdpr-consent-lightbox__content",
            r = 1e3;
        setTimeout(n, r)
    }(config.callbacks, safeSessionStorage(), config, napi, dataArrange, window[config.padl.namespace].dataLayer)),
    function(a, b, c, d, e) {
        "use strict";
        b({
            test: a.discoveryOffersBlock,
            yep: a.components.discoveryOffersBlock,
            callback: function() {
                function b(b, c, d) {
                    o.toggleClass("disabled", b).prop("disabled", b).attr("aria-disabled", b), c && (w.tabData.discoveryOffer.clubActionId = d.find(".offer-item").attr(n), w.tabData.discoveryOffer.label = c.attr(m), w.tabData.discoveryOffer.products = a.discoveryOfferProducts[c.index()], i.trigger("discoveryOffer.tabSelect", w.tabData))
                }

                function f(a, b) {
                    var c, d;
                    for (c = 0; c < b.length; c++)
                        for (d = 0; d < b[c].length; d++)
                            if (b[c][d].code === a) return c;
                    return -1
                }

                function g(a, b, c) {
                    var d;
                    for (d = 0; d < c[b].length; d++)
                        if (c[b][d].code === a) return c[b][d];
                    return !1
                }
                var h = c("#discovery-offers"),
                    i = c(document),
                    j = c(".discovery-offer-gift__selection"),
                    k = ".discovery-offer .offer-item input:radio, .discovery-offer-gift__input",
                    l = ".discovery-offer .offer-item",
                    m = "data-pack-name",
                    n = "data-clubaction-id",
                    o = c("#addDiscoveryOfferButton"),
                    p = 0,
                    q = 1,
                    r = 2,
                    s = 0,
                    t = !1,
                    u = a.discoveryOfferProducts || [],
                    v = h.find(".pack-0").attr(m),
                    w = {
                        pageViewData: {
                            discoveryOffer: {
                                action: "Discovery Offer - Page/Screen Load",
                                label: v,
                                clubActionId: h.find(".discovery-offer:first .offer-item").attr(n),
                                products: u.length ? u[s] : []
                            }
                        },
                        tabData: {
                            discoveryOffer: {
                                action: "Discovery Offer - Tab Select"
                            }
                        },
                        openDetailPack: {
                            action: "Discovery Offer - More Info Panel Open"
                        },
                        closeDetailPack: {
                            action: "Discovery Offer - More Info Panel Closed"
                        },
                        notInterested: {
                            action: "Discovery Offer - Not Interested"
                        },
                        offerSelected: {
                            action: "Discovery Offer - Offer Selected",
                            label: "",
                            products: []
                        }
                    };
                h.on("click", l, function() {
                    c(this).find("input:radio").trigger("click")
                }).on("click", k, function(d) {
                    var e = c(this).data("in-stock"),
                        f = e ? a.labels.addToBag : a.labels.outOfStock;
                    o.find("span").first().html(f), b(!e), d.stopPropagation()
                }).on("change", k, function() {
                    var a, b = this.value.split(","),
                        d = c(this),
                        e = b[p],
                        k = b[q],
                        n = b[r];
                    j.removeClass("gift-selected"), d.parent().addClass("gift-selected"), this.checked && (c(l).removeClass("active"), d.closest(".offer-item").addClass("active"), d.data("checkister-mode") && (t = !0, o.addClass("popin-trigger").data("popin-id", "promotion-push-lightbox-checkister").off("click.welcomeOfferCheckisterMode").on("click.welcomeOfferCheckisterMode", function() {
                        var a = c("#discovery-offers form"),
                            b = a.attr("action"),
                            d = a.find(".discovery-offer:visible input:checked").val(),
                            e = c("#previousSelectedProductCodes").val();
                        c("#promotion-push-lightbox-checkister").find("form").attr("action", b).find('input[name="productCodes"]').val(d).end().find('input[name="previousProductCodes"]').val(e)
                    })), a = f(e, u), w.offerSelected.products = [g(n, a, u)], w.offerSelected.label = h.find(".pack-" + a).attr(m), w.offerSelected.clubActionId = k, i.trigger("discoveryOffer.offerSelected", w.offerSelected))
                }).on("click", ".btn-detail-pack", function() {
                    var a = c(this),
                        b = a.attr(m);
                    a.hasClass("active") ? (w.closeDetailPack.label = b, i.trigger("discoveryOffer.closeDetailPack", w.closeDetailPack)) : (w.openDetailPack.label = b, i.trigger("discoveryOffer.openDetailPack", w.openDetailPack))
                }).on("click", "#ta-skip-welcome-offer", function() {
                    i.trigger("discoveryOffer.notInterested", w.notInterested)
                }).on("click", "#addDiscoveryOfferButton", function(a) {
                    t || a.preventDefault();
                    var b, f, g, h, j = c(k).filter(":checked").val(),
                        l = {
                            products: {},
                            label: c(".ui-tabs-active").attr(m)
                        };
                    if (j && (b = j.split(","), g = b[0] || "", h = b[2] || "", f = b[1] || "", l.clubActionId = f, l.products = {
                            packProductCode: g,
                            giftProductCode: h
                        }), i.trigger("discoveryOffer.addToBasket", l), e.setItem("discoveryOffer.addToBasket", JSON.stringify(l.products)), !t) {
                        var n = [{
                            productId: g,
                            quantity: 1
                        }];
                        h && n.push({
                            promotionCode: f,
                            productId: h,
                            quantity: 1
                        }), d.cart().addOrUpdateProducts(n, 1).then(function() {
                            c("#welcomeOffer").submit()
                        })
                    }
                }), c("[aria-hidden=false]", h).find(k).filter(":checked").trigger("click").trigger("change"), c("#discovery-tabs").tabs({
                    create: function(a, c) {
                        c.panel.find("input:checked").length > 0 && (c.panel.find("input:checked").trigger("change"), b(!c.panel.find("input:checked").length, c.tab, c.panel))
                    },
                    beforeActivate: function(a, c) {
                        b(!c.newPanel.find("input:checked").length, c.newTab, c.newPanel)
                    }
                }), i.trigger("discoveryOffer.pageView", w.pageViewData)
            }
        })
    }(config, yepnope, jQuery, napi, safeLocalStorage()),
    function(a, b, c) {
        "use strict";
        var d = function(a, b) {
            a.is(":checked") ? b.prop("disabled", !1).attr("aria-disabled", "false").removeClass("disabled").addClass("button-green") : b.prop("disabled", !0).attr("aria-disabled", "true").addClass("disabled").removeClass("button-green")
        };
        c(document).on("click", ".welcome-offer:not(.no-pointer)", function() {
            c(this).find("input:radio").trigger("click")
        }).on("click", ".welcome-offer input:radio, .welcome-offer a", function(a) {
            a.stopPropagation()
        }), b({
            test: a.welcomeOffersBlock,
            yep: a.components.welcomeOffersBlock,
            complete: function() {
                var a = c("#welcome-offers"),
                    b = c("#addWelcomeOfferButton"),
                    e = a.find("input:radio");
                d(e, b), e.on("click", function() {
                    d(e, b), c(this).data("checkister-mode") && b.addClass("popin-trigger").data("popin-id", "promotion-push-lightbox-checkister").off("click.welcomeOfferCheckisterMode").on("click.welcomeOfferCheckisterMode", function() {
                        var b = a.attr("action"),
                            d = a.find("input:checked").val(),
                            e = c("#previousSelectedProductCodes").val();
                        c("#promotion-push-lightbox-checkister").find("form").attr("action", b).find('input[name="productCodes"]').val(d).end().find('input[name="previousProductCodes"]').val(e)
                    })
                })
            }
        })
    }(config, yepnope, jQuery),
    function(a, b) {
        "use strict";

        function c(a) {
            return a.reduce(function(a, b) {
                return a || !!b
            }, !1)
        }

        function d() {
            var a = document.head.querySelectorAll("link");
            if (!a || !a.length) return !1;
            for (var b = 0; b < a.length; b++)
                if (/shared.*gift/.test(a.item(b).href)) return !0;
            return !1
        }
        var e = [document.querySelector("[data-ng-controller]") && !window.angular],
            f = [document.querySelector("[data-ng-controller=userLoggedController]"), document.getElementById("redirect"), b.focusPushBlock && b.focusPushBlock.length, document.querySelector(".nsb-form"), "undefined" != typeof nn && nn.plps && nn.plps.length, document.getElementById("npm-block"), document.getElementById("address-form-container"), document.querySelector(".toggle-block-trigger"), document.getElementById("leadForm"), document.getElementById("accessory-collection-selector-block"), document.getElementById("confirmPasswordBlock"), document.getElementById("shopping-bag-with-ecotax"), document.getElementById("ecotax-info-block"), document.getElementById("checkout-recap-with-ecotax"), document.getElementById("npm-block"), document.querySelector("[data-ng-controller=customerUnsubscribing]")];
        setTimeout(function() {
            a({
                test: c(e),
                yep: b.resUrl + "/generated/angular.js",
                complete: function() {
                    a([{
                        test: c(f),
                        yep: b.resUrl + "/generated/secondary.js"
                    }, {
                        test: b.subscription,
                        yep: b.components.subscription
                    }])
                }
            })
        }, 0);
        var g = [d(), !window.CartManager];
        setTimeout(function() {
            a({
                test: c(g),
                yep: b.resUrl + "/generated/legacyCartManager.js"
            })
        }, 500)
    }(yepnope, config || {
        resUrl: "/broken"
    });