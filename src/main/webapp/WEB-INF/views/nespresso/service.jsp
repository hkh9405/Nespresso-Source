<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	String uri = request.getRequestURI();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/css.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveComponents.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/styles.f39e04764e2617265801.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/Tutorial.css" />
<!-- <link rel="stylesheet" type="text/css" href="/nespresso/resources/css/app.css" /> -->
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/app2.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/service/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/service/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/service/responsiveComponents.css" />

<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://www.contact.nespresso.com/apps.php?a=calleo-livechat.css">
<link rel="stylesheet" type="text/css" href="https://www.contact.nespresso.com/apps.php?a=calleo-triggers.css">
<!-- <link href="https://www.nespresso.com/shared_res/agility/services/css/app.css" rel="stylesheet"> -->
<link rel="canonical" href="https://www.nespresso.com/kr/ko/services">
<link rel="shortcut icon" type="image/x-icon" href="/_ui/img/favicon.ico">
<link rel="dns-prefetch" href="//www.googletagmanager.com">
<link rel="dns-prefetch" href="//www.contact.nespresso.com">
<link rel="dns-prefetch" href="//collect.analzye.ly">
<link rel="dns-prefetch" href="//connect.facebook.com">
<link rel="dns-prefetch" href="//ad.doubleclick.net">
<link rel="dns-prefetch" href="//analytics.twitter.com">
<link href="/_ui/generated/responsiveLoadedFirst.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" rel="stylesheet" media="screen">
<link rel="stylesheet" href="/_ui/generated/responsiveComponents.css?v=b68e98c89fd319126d2eb64ae2105aaaa6c5c125" media="screen" onload="if(media!='screen')media='screen'">


<script async=""> 
	    (function (window) {
            //function getParameterByName is getting a param value from current url 
            function getParameterByName(paramName) {
                var regex = new RegExp("[\\?&]" + paramName + "=([^&#]*)"),
                    paramValue = regex.exec(location.search);
                return paramValue === null
                    ? ""
                    : decodeURIComponent(paramValue[1].toLowerCase().replace(/\+/g, " "));
            }
            
            //Get terminal param to detect if user is in the mobile webview
            const TERMINAL = "terminal";
            const terminalParam = getParameterByName(TERMINAL);
            const MOBAPP = 'mobapp';

			//Publish the SmartBanner To be showed
			if(typeof smartbanner !== "undefined"){
                window.onload = function () {
                    try {
                        if (terminalParam !== MOBAPP){
                            smartbanner.publish();
                        }
                    } catch(err) {
                        console.log(err)
                    }
                };
            }
		})(window);
</script>





<!-- ?????????TAB -->
<script>
  $( function() {

    $('.v_slide ul li').on('click', function(e){

    	var idx = $(this).index();
    	
    	if( $(this).hasClass('v_active')){
    		$(this).siblings('li').removeClass('v_active');
    		$(this).siblings('li').find('a').removeClass('v-link-active');
    		$('div#tab').hide();
        	$('div#tab').eq(idx).show();
    	} else {
    		$(this).addClass('v_active');
    		$(this).find('a').addClass('v-link-active');
    		$(this).siblings('li').removeClass('v_active');
    		$(this).siblings('li').find('a').removeClass('v-link-active');
    		$('div#tab').hide();
        	$('div#tab').eq(idx).show();
    	}
    });
  });
</script>

<!-- ?????????TAB -->
<script>
  /* $( function() {

    $('div.v_sectionRestrict ul.tab li').on('click', function(e){

    	var idx = $(this).index();
    	
    	if( $(this).hasClass('v-link-active')){
    		$(this).siblings('li').removeClass('v-link-active');
    		//$(this).siblings('li').find('a').removeClass('v-link-active');
    		$('div.v_slide').hide();
        	$('div.v_slide').eq(idx).show();
    	} else {
    		$(this).addClass('v-link-active');
    		//$(this).find('a').addClass('v-link-active');
    		$(this).siblings('li').removeClass('v-link-active');
    		//$(this).siblings('li').find('a').removeClass('v-link-active');
    		$('div.v_slide').hide();
        	$('div.v_slide').eq(idx).show();
    	}
    });
  }); */
</script>




</head>
<body>

<!-- ------------------------------------------?????? ??????---------------------------------------------------- -->
<c:import url="../header.jsp"></c:import>
<!-- ------------------------------------------?????? ???---------------------------------------------------- -->


	<main id="main"> <span id="a11y-main-area"
		class="visually-hidden" tabindex="-1">?????? ???????????? ?????? ????????????.</span>
	<div id="block-8807212930549" class="free-html" data-label="">
		<div class="vue v_services">
			<section class="vue_introduction v_parallax" style="height: auto;">
			<div class="bg_container v_parallaxLayer" pv-speed="4"
				style="transform: translate3d(0px, 0px, 0px);">
				<div class="bg_placeholder"
					style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/intro_placeholder_L.jpg&quot;);"></div>
				<div class="bg_full" lazy="loaded"
					style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/intro_L.jpg&quot;);"></div>
			</div>
			<div class="v_sectionRestrict">
				<div class="v_sectionContent">
					<div class="v_table">
						<div class="v_col50">
							<h1 class="v_logo wow" data-wow="" style="padding-left: 0px;"><i class="fab fa-neos" style="font-size: 25px;"></i>&nbsp;??????????????? ?????????</h1>
							<h3 data-wow="" data-wow-delay="1" class="wow"></h3>
							<div class="v_wysiwyg wow" data-wow="" data-wow-delay="2">
								<p>??????????????? ????????? ?????? ?????????, ???????????? ?????? ????????? ????????? ????????? ????????? ????????? ???????????? ???????????????.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			</section>
			<section class="vue_mainContent v_sectionBottom"> <span
				class="v_visually_hidden" id="v_a11y_categories">???????????? ????????? ?????????
				???????????????</span>
			<!-- ????????? -->
			<div class="v_sectionRestrict v_sectionTabs" role="tabpanel">
				<ul role="tablist" aria-labelledby="v_a11y_categories" class="tab">
					<li role="presentation" data-wow="" key="[object Object]"
						class="v-link-active wow"><a role="tab" id="tab_order"
						aria-selected="true" href="http://localhost:8080/nespresso/service.action"> <span>?????? &amp; ??????</span>
					</a></li>
					<li role="presentation" data-wow="" key="[object Object]"
						class="wow"><a role="tab" id="tab_customer-care"
						aria-selected="false" href="http://localhost:8080/nespresso/gservice.action"> <span>??????
								??????</span>
					</a></li>
					<li role="presentation" data-wow="" key="[object Object]"
						class="wow"><a role="tab" id="tab_recycling"
						aria-selected="false" href="http://localhost:8080/nespresso/rservice.action"> <span>?????????</span>
					</a></li>
				</ul>
			</div>
			<div class="vue_services" role="tabpanel">
				<div class="v_focusable v_visually_hidden" tabindex="0">
					<span>???????????? ???????????????</span>
					<h4>?????? &amp;amp; ??????</h4>
				</div>
				<div class="v_sectionSlider">
					<div class="v_sectionRestrict">
						<div class="v_slider v_notActive">
							<div class="v_slideContainer"
								style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
								
								<!-- ??????&?????? ????????? -->
								<div class="v_slide"
									style="transition: all 1.3s ease 0.15s; transform: translateX(0px); display: block">
									<ul aria-hidden="false">
										<li class="v_slide_item wow v_isVisible v_active" data-wow=""
											data-wow-delay="3" style="width: 249px;">
											<div class="v_itemTable">
												<a aria-expanded="true" tabindex="0"
													href="#!/order/by-internet" class="v-link-active"> <svg
														xmlns="http://www.w3.org/2000/svg"
														enable-background="new 0 0 60 60" viewBox="0 0 60 60"
														class="injected-svg"
														data-src="/shared_res/agility/commons/img/services/orderInternet.svg"
														aria-hidden="true">
													<g fill="#fff">
													<path
														d="m31 30.1 1.2-4.5-1.6-.3-.3 1c-.4-.9-1.4-1.4-2.3-1.3-2.4.2-4.3 2.1-4.4 4.5-.3 1.5.6 3 2.1 3.3.2.1.5.1.7.1 1.1 0 2.1-.5 2.8-1.3.1.2.2.3.3.5.1-.1.2 0 .2.1.3.2.5.3.8.5.4.2.8.3 1.2.2 2.7 0 3.9-2.3 4.1-4.5.4-4-2.9-7.3-7.1-7.3-4.5.1-8.2 3.6-8.6 8.1-.5 3.9 2.2 7.4 6 7.9.4.1.8.1 1.1.1 1.7 0 3.4-.4 4.8-1.4l.2-.1-.5-.9-.2.1c-1.3.8-2.8 1.2-4.4 1.2-3.3.1-6.1-2.4-6.3-5.7 0-.4 0-.8.1-1.2.4-3.9 3.5-6.8 7.4-6.9 3.2-.2 6 2.3 6.1 5.6v.6c-.2 2.1-1.1 3.5-2.4 3.5-.4 0-.7 0-1-.2-.2-.2-.3-.6-.2-.9 0-.3.1-.6.2-.8zm-1.3-1.6c-.1 1.4-1.2 2.6-2.7 2.8-.9 0-1.7-.7-1.7-1.6 0-.1 0-.2 0-.4.1-1.5 1.3-2.7 2.7-2.8.9 0 1.6.6 1.6 1.5.1.2.1.3.1.5z"></path>
													<path
														d="m43.2 16.8c0-.2 0-.3-.2-.5-.1-.1-.2-.2-.4-.2h-8.4v-1.9c0-2.3-1.5-4.1-3.3-4.2h-3.8c-1.8.2-3.2 2-3.1 4.3v1.9h-8c-.3 0-.6.2-.6.5l-1.3 24.8c0 .2.1.3.2.5.1.1.2.2.4.2h3.2l-2.9 2.4 2.7.4c.2 0 .4.2.4.4 0 .1 0 .2-.1.3l-2.1 3.9.7.4c.3.2.6.1.8-.2v-.1l2-4 1.6 2.4s.4.6.5-.2l1.2-9.5s.1-.6-.4-.2l-2.9 2.5h-4.1l1.2-23.5h25.5l-1.2 23.5h-16.5l-.2 1.3h17.2c.2 0 .4-.1.5-.2l3.9-3.4.1-.1c.1-.1.1-.3.2-.5zm-10.1-.8h-8v-1.9c0-1.5.9-2.9 2.1-3h3.6c1.2.1 2.3 1.5 2.3 3.1zm8.9 24.1.2-3.1 2.1 1.1zm.3-4.5.6-12.6 1.8 13.9z"></path></g></svg>
													<p>????????? ??????</p>
												</a>
											</div>
										</li>
										<li class="v_slide_item wow v_isVisible" data-wow=""
											data-wow-delay="4" style="width: 249px;">
											<div class="v_itemTable">
												<a aria-expanded="false" tabindex="0"
													href="#!/order/by-phone"> <svg
														xmlns="http://www.w3.org/2000/svg"
														enable-background="new 0 0 60 60" viewBox="0 0 60 60"
														class="injected-svg"
														data-src="/shared_res/agility/commons/img/services/orderPhone.svg"
														aria-hidden="true">
													<path
														d="m38.8 44.7v-.1l-1.6-5.6c-.1-.3-.3-.5-.5-.7-.2-.1-.3-.1-.5-.1-.1 0-.2 0-.3.1l-3.9 1c-.4-.5-.6-1-.8-1.6-1-2.2-1.7-4.5-2.3-6.8-.7-2.3-1.3-4.7-1.6-7.1-.1-.6-.1-1.2-.1-1.9l3.7-1.1c.6-.2.9-.8.7-1.4l-1.6-5.6v-.1c-.4-.8-1.2-1.3-2.1-1.3-1.2 0-2.6.7-4.2 2.2l-.1.1c-1.8 1.9-2.7 5.1-2.6 9.3 0 3 .4 5.9 1.2 8.8 1.9 6.6 6.1 13.7 10.6 14.4.7.1 1.4.2 2.1.2 1.2.1 2.3-.3 3.2-1.1.6-.4.8-1 .7-1.6zm-1.3 1c-.7.6-1.6.9-2.5.7-.6 0-1.2-.1-1.9-.1-4.1-.7-8.1-7.5-9.9-13.7-.7-2.8-1.1-5.7-1.2-8.5 0-4 .7-6.9 2.4-8.5 1.5-1.3 2.7-1.9 3.6-1.9.5 0 1 .2 1.2.7l1.6 5.6c0 .1 0 .2-.1.2l-4 1.2-.3.1-.1.2c-.3 1.2 0 4.1 1.6 9.7s2.7 8.2 3.6 9l.2.1.3-.1 4-1.2h.1l.1.1 1.6 5.6c.1.2 0 .6-.3.8z"
														fill="#fff"></path></svg>
													<p>?????? ??????</p>
												</a>
											</div>
										</li>
										<li class="v_slide_item wow v_isVisible" data-wow="" data-wow-delay="5" style="width: 249px;"> <div class="v_itemTable"> <a aria-expanded="false" tabindex="0" href="#!/order/in-boutique"> <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 60 60" viewBox="0 0 60 60" class="injected-svg" data-src="/shared_res/agility/commons/img/services/orderBoutique.svg" aria-hidden="true"><g fill="#fff"><path d="m14.7 49h14.9v-25.8h-14.9zm.8-24.9h13.2v24h-13.2z"></path><path d="m11 11v38h2.8v-26.6h32.4v26.6h2.8v-38zm37.1 37.1h-1v-26.7h-34.2v26.6h-.9v-36.1h36.2z"></path><path d="m33.9 12.8h-7.9v7.8h7.8c.1 0 .1-7.8.1-7.8zm-6.6 1.8c.8-.3 1.7-.1 2.4.5.2.2.3.4.5.6.3.3.6.8.9 1.1v-1.5h.4v3c-.5-.5-.9-1-1.3-1.6-.3-.4-.6-.8-.9-1.2-.2-.3-.5-.5-.8-.7-.5-.2-.9-.2-1.2-.2zm3.1 3.7c-.2-.2-.3-.4-.5-.6-.3-.3-.6-.8-.9-1.1v1.5h-.4v-3c.5.5.9 1 1.3 1.6.3.4.6.8.9 1.2.2.3.5.5.8.7.3.1.7.2 1 .2-.7.3-1.6.1-2.2-.5z"></path><path d="m30.4 49h14.9v-25.8h-14.9zm.8-24.9h13.2v24h-13.2z"></path></g></svg> <p>?????????</p> </a> </div> </li>
										<li class="v_slide_item wow v_isVisible" data-wow="" data-wow-delay="6" style="width: 249px;"> <div class="v_itemTable"> <a aria-expanded="false" tabindex="0" href="#!/order/next-day-delivery"> <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 70 70" viewBox="0 0 70 70" class="injected-svg" data-src="/shared_res/agility/commons/img/services/nextDayDelivery.svg" aria-hidden="true"><g fill="#fff" transform="translate(14 7)"><path d="m18.7 13.3c0 .5.4 1 1 1s1-.4 1-1c0-.5-.4-1-1-1s-1 .4-1 1"></path><path d="m15.2 44.4c-8-2-13.7-9.2-13.7-17.4.1-10 8.2-18 18.2-18 9.3 0 17.1 7.1 18 16.2l-2.9-3.4c-.3-.3-.8-.4-1.1-.1s-.4.8-.1 1.1l4.5 5.4c.2.2.4.3.7.3s.5-.2.6-.4l3.2-6.2c.2-.4 0-.9-.3-1.1-.4-.2-.9 0-1.1.3l-1.9 3.8c-1.2-9.9-9.6-17.5-19.6-17.5-10.9 0-19.7 8.8-19.7 19.5 0 9 6.1 16.8 14.9 19h.2c.4 0 .7-.2.8-.6 0-.4-.2-.8-.7-.9"></path><path d="m5.9 25.9c-.6 0-1 .4-1 1 0 .5.4 1 1 1s1-.4 1-1c0-.5-.4-1-1-1"></path><path d="m33.9 42.8 3.9-5.1v5.1zm6.7 0v-9.2h-2.6l-7.3 9.5v2.2h7.1v3.6h2.9v-3.6h2.2v-2.5z"></path><path d="m26.5 43.6c1.5-1.6 2.6-3.1 2.6-5.3 0-3-2-4.9-5.2-4.9-2.1 0-3.7.7-5 2l-.1.1 1.8 2 .1-.2c.7-.9 1.6-1.3 2.8-1.3 1.5 0 2.4 1 2.4 2.4 0 1.6-1.1 2.9-3.1 4.7-.8.8-1.9 1.6-3.1 2.6l-.7.8v2.3h10.9v-2.6h-6.3c1.2-1 2.2-1.8 2.9-2.6"></path><path d="m21.1 26.9c0 .8-.6 1.4-1.4 1.4s-1.4-.6-1.4-1.4.6-1.4 1.4-1.4 1.4.7 1.4 1.4m1.6 0c0-.5-.1-1-.4-1.4l8.5-8.1c.3-.3.3-.8 0-1.1-.3-.3-.8-.3-1.1 0l-8.5 8.1c-.5-.3-1-.4-1.5-.4-.8 0-1.6.3-2.1.9l-6-3.4c-.2-.1-.4-.1-.6-.1s-.4.2-.5.4c-.2.4-.1.9.3 1.1l6 3.4c-.1.3-.1.5-.1.7 0 1.6 1.3 3 3 3 1.6-.1 3-1.4 3-3.1"></path></g></svg> <p>?????? ?????????</p> </a> </div> </li>
									</ul>
								</div>
								<div class="v_caret" style="display: none;"></div>
							</div>
						</div>
					</div>
				</div>
<!-- TAB ?????? & ?????? -->
				<div class="vue_service orderInternet" id="tab" style="display: block;">
					<div class="bg_container">
						<div class="bg_placeholder"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/orderInternet_placeholder_L.jpg&quot;);"></div>
						<div class="bg_full" lazy="loaded"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/orderInternet_L.jpg&quot;);"></div>
					</div>
					<div class="v_sectionRestrict">
						<div class="v_sectionContent v_row">
							<div class="v_text v_push50">
								<h2 tabindex="0" class="v_focusable wow" data-wow="">
									24?????? 365??? ?????? ?????????<br>??????????????? ???????????????<br>????????? ?????????
								</h2>
								<div class="v_wysiwyg wow" data-wow="">
									<p>
										?????????????????? ?????????????????? ?????????(????????????/????????? ??? 29??????) ????????? ?????? ??????, ????????? ?????? ?????? ????????? ??????
										????????? ????????? ????????? ????????? ??????????????? ?????? ???????????? ??? ????????????. ????????? ????????? ??? ?????? ????????? ???????????????
										????????? ???????????????. ????????? ??? ??? ????????? ?????? ???????????? ??? ????????????. <br> <br>
										???????????????????????? ??????????????? ???????????? 2?????? ?????? ????????? ???????????????. <br> <br> ??????
										???????????? ?????? ????????? <br> ??????????????? ????????? ????????? <br> <br> ?????????,
										????????????, ??????????????? ???????????? ?????? ????????? ??????????????? ????????? ????????????????????? ?????? ????????? ?????????????????? ????????????
										?????? ?????????. <br> <br> ??????????????? ?????? ?????????????????? <br>
										<br> <a border="0"
											href="https://itunes.apple.com/kr/app/nespresso/id342879434?mt=8">
											<img
											src="https://www.nespresso.com/ecom/medias/sys_master/public/9722785366046/AppleEN.png"
											border="0""="">
										</a> <a border="0"
											href="https://play.google.com/store/apps/details?id=com.nespresso.activities">
											<img
											src="https://www.nespresso.com/shared_res/medias/playstore-en.png"
											border="0">
										</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ?????? ?????? -->
				<div class="vue_service orderPhone" id="tab" style="display: none;">
					<div class="bg_container">
						<div class="bg_placeholder"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/orderPhone_placeholder_L.jpg&quot;);"></div>
						<div class="bg_full" lazy="loaded"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/orderPhone_L.jpg&quot;);"></div>
					</div>
					<div class="v_sectionRestrict">
						<div class="v_sectionContent v_row">
							<div class="v_text v_push50">
								<h2 tabindex="0" class="v_focusable wow" data-wow="">?????? ??????</h2>
								<div class="v_wysiwyg wow" data-wow="">
									<p>
										??????????????? ????????? ?????? 24?????? 365??? ???????????? ??????????????? ?????? ???????????? ????????? ?????? ???????????? ?????????
										????????????. ????????? ?????? ?????? ????????? ?????? ?????? ???????????? ???????????? ????????? ?????? ????????? ????????? ?????? ?????? ????????????
										???????????? ????????????. <br>
										<br>???????????? :<br> 080-734-1111(???????????????, ?????? ??????) ??????<br>
										+82-2-3277-1398(?????? ?????? ??????)<br> 24??????/365???
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- ????????? -->
				<div class="vue_service orderBoutique" id="tab" style="display: none;">
					<div class="bg_container">
						<div class="bg_placeholder"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/orderBoutique_placeholder_L.jpg&quot;);"></div>
						<div class="bg_full" lazy="loaded"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/orderBoutique_L.jpg&quot;);"></div>
					</div>
					<div class="v_sectionRestrict">
						<div class="v_sectionContent v_row">
							<div class="v_text v_push50">
								<h2 tabindex="0" class="v_focusable wow" data-wow="">?????????</h2>
								<div class="v_wysiwyg wow" data-wow="">
									<p>
										???????????? ????????? ???????????? ????????? ??????????????? ?????????<br> ????????? ???????????? ???????????????. <br>
										<br> ?????????????????? ?????? ??????????????? ?????? ????????? ??????????????? ?????? ?????????<br>?????? ?????????,
										???????????? ????????? ??? ?????? ????????? ????????? ???????????? ??? ?????? ?????? ????????????. <br> ?????? ???????????? ?????????
										?????? ????????? ?????? ????????? ??????????????? ???????????? ????????? ????????? ???????????? ????????? ????????? ???????????? ???????????? ????????????.<br>
										<br>
										<a href="https://www.nespresso.com/mosaic/kr/ko/storeLocator"><font
											color="#CC9933"><b><u>?????? ?????? ????????????&gt;</u></b></font></a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ?????? ????????? -->
				<div class="vue_service nextDayDelivery" id="tab" style="display: none;">
					<div class="bg_container">
						<div class="bg_placeholder"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/nextDayDelivery_placeholder_L.jpg&quot;);"></div>
						<div class="bg_full" lazy="loaded"
							style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/nextDayDelivery_L.jpg&quot;);"></div>
					</div>
					<div class="v_sectionRestrict">
						<div class="v_sectionContent v_row">
							<div class="v_text v_push50">
								<h2 tabindex="0" class="v_focusable wow" data-wow="">?????? ?????????
									??????</h2>
								<div class="v_wysiwyg wow" data-wow="">
									<p>
										<font color="#CC9933">?????? ??????</font> 6?????? ?????? ?????? ??? ?????? ??????<br>
										<br> - ?????? ????????? : 2,500??? <br> - ?????? ????????? : 5,000??? <br>
										<br> <font color="#CC9933">?????? ?????? ????????? </font> <br> ??????
										5??? ????????? ????????? ???????????? ?????? ??????????????? ????????? ???????????????. ???, ?????? ?????? ?????? ????????? ???????????? ?????? ??????
										????????? ????????? ??? ?????? ??? ?????? ??????????????????. ????????? ???????????? ???????????????, ????????? ??????????????? ?????????
										??????????????????. ??? ?????????????????? ????????? ????????? ???????????????. <br> <br>
										<font color="#CC9933">????????? ?????? ?????? ????????? </font> <br> ????????? ??????
										5??? ???????????? ????????? ?????? 5???????????? ?????? ????????? ??????, ?????? ???????????? ???????????? ???????????? ???????????? ???????????????
										?????? ?????? ???????????? ????????? ????????????. <br> <br> - ??????????????? ???????????? ?????? ??? ??????
										(080-734-1111) <br> - ?????? ?????? ?????? ?????? ????????? ?????? <br> - ??????
										?????? ?????? (5,000???)
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
<!-- ..TAB ??????????????? -->
			</div><!--  -->
			
			</section>
			<section class="vue_prospect v_parallax">
			<div class="bg_container v_parallaxLayer" pv-speed="4">
				<div class="bg_placeholder"
					style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/prospect_placeholder_L.jpg&quot;);"></div>
				<div class="bg_full" lazy="loaded"
					style="background-image: url(&quot;https://www.nespresso.com/shared_res/agility/services/services/img/prospect_L.jpg&quot;);"></div>
			</div>
			<div class="v_sectionRestrict">
				<div class="v_sectionContent v_row">
					<div class="v_col50">
						<h2 data-wow="" class="wow">
							?????? ??????????????? ?????????<br>????????????????
						</h2>
						<div class="v_wysiwyg wow" data-wow="">
							<p>24?????? 365??? ????????? ?????????????????? ???????????? ???????????? ?????? ????????? ?????? ????????? ?????? ????????? ?????? ??????
								????????? ?????? ???????????? ?????? ??? ????????? ?????? ?????? ???????????? ???????????? ????????????.</p>
							<p>?????? ??????????????? ????????? ?????? ?????????, ???????????? ?????? ????????? ????????? ????????? ????????? ????????? ????????????
								???????????????.</p>
							<style>
h2, h3, p {
	word-break: keep-all !important;
}
</style>
						</div>
						<a class="v_btn v_btnLight v_btnRoundCorner wow" data-wow=""
							href="<%=cp%>/login"> <span>?????? ???????????????</span>
						</a>
					</div>
				</div>
			</div>
			</section>
		</div>
		<script type="text/javascript"
			src="https://www.nespresso.com/shared_res/agility/services/js/manifest.js"></script>
		<script type="text/javascript"
			src="https://www.nespresso.com/shared_res/agility/services/js/vendor.js"></script>
		<script type="text/javascript"
			src="https://www.nespresso.com/shared_res/agility/services/js/app.js"></script>
	</div>

	</main>


<!-- footer ?????? -->

<footer role="contentinfo">
  <div id="footer" class="footer-block">
   <h2 class="visually-hidden">???????????? ??????</h2>
    <div id="CompanyFooterRespBlock-8797707806480-c69290b8-4a6a-48d1-95d1-4c6d16782755" class="crema-ui-container ">
    	<div class="Footer ResponsiveContainer">
    		<div class="Footer__bar">
    			<div class="Footer__intl">
    				<h3 class="VisuallyHidden">?????? ??? ?????? ??????</h3>
    				<a href="/kr/ko/country" class="AccessibleLink Footer__countries-page-link">
    					<span class="VisuallyHidden">?????? ???????????? ??????????????? ?????? ???????????????. ?????? ????????? ????????????, ????????? ???????????????.</span>
    					<span class="CountryFlag Footer__country-flag">
    						<img width="24" height="25" srcset="https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=24 1x, https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=48 2x, https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=72 3x, https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=96 4x" src="https://www.nespresso.com/_ui/img/flags/kr.png?impolicy=small&amp;imwidth=24" role="presentation" class="ResponsiveImage CountryFlag__image" alt="">
    					</span>
    				</a>
<script type="text/javascript">

$(function(){
	$(document).mousedown(function( e ){
		if( $("#lang_dropdown").is(":visible") ) {
			$("#lang_dropdown").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
				} else {
					$(this).hide();
					$('#lang_btn').removeClass('LanguageSwitcher__button active');
					$('#lang_btn').addClass('LanguageSwitcher__button');
					$('#lang_dropdown').css('display','none');
					$('#lang_btn').attr('aria-expanded','false');
				}
			});
		}
	});
});	

$(document).ready(function(){
	
	$('#lang_dropdown').css('display','none');
	
	$('#lang_btn').click(function(){
		
		if($('#lang_dropdown').is(':visible')==false) {
			
			$('#lang_btn').removeClass('LanguageSwitcher__button');
			$('#lang_btn').addClass('LanguageSwitcher__button active');
			$('#lang_dropdown').css('display','block');
			
			$('#lang_btn').attr('aria-expanded','true');
			
		}else{
			
			$('#lang_btn').removeClass('LanguageSwitcher__button active');
			$('#lang_btn').addClass('LanguageSwitcher__button');
			$('#lang_dropdown').css('display','none');
			
			$('#lang_btn').attr('aria-expanded','false');
		}
	});
}); 



</script>    				
    				<div class="LanguageSwitcher Footer__language-switcher">
	    				<button id="lang_btn" class="LanguageSwitcher__button" aria-expanded="false">?????????
	    					<i aria-hidden="true" class="Glyph Glyph--arrow-bottom LanguageSwitcher__button-icon"></i>
	    				</button>
	    				<ul id="lang_dropdown" class="Footer__language-switcher-dropdown LanguageSwitcher__dropdown">
	    					<li class="LanguageSwitcher__item">
	    						<a class="AccessibleLink LanguageSwitcher__link" href="/nespresso/en">English</a>
	    					</li>
	    					<li class="LanguageSwitcher__item">
	    						<a class="AccessibleLink LanguageSwitcher__link" href="/nespresso/home">?????????</a>
	    					</li>
	    				</ul>
    				</div>
    			</div>
    			<div class="Footer__links">
    				<h3 class="VisuallyHidden">???????????? ??????</h3>
    				<ul class="FooterLine FooterLine--primary">
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/terms-and-condition" target="_blank">??????????????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/privacy-policy" target="_blank">???????????? ????????????</a>
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/cookies">??????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    						
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/service-customer-care">????????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/pro/kr/ko/" target="_blank">??????????????? ???????????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    				</ul>
    				<ul class="FooterLine">
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/recipes/kr/ko/coffe0e-recipes.html" target="_blank">?????? ?????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/glossary" target="_blank">????????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="http://www.nestle-nespresso.com/" target="_blank">????????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/careers/?m=KR&amp;l=KO#/">??????</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/sitemap" target="_blank">????????????
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="FooterLine__item">
    						<a class="AccessibleLink FooterLine__item-link" href="https://www.nespresso.com/kr/ko/accessibility">??? ?????????</a>
    					</li>
    				</ul>
    			</div>
    		</div>
    		<div class="Footer__bottom">
    			<div class="SocialLink">
    				<h3 class="VisuallyHidden">??????????????? ??????</h3>
    				<span class="SocialLink__label">??????????????? ????????? ????????? ?????????</span>
    				<ul class="SocialLink__list">
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://www.instagram.com/nespresso.kr/" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="Nespresso Instagram">
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
	    						<a class="AccessibleLink SocialLink__item-link" href="https://www.facebook.com/nespresso" target="_blank">
	    						<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="????????????">
	    						<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://www.youtube.com/user/nespresso" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="YouTube">
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://twitter.com/nespresso" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="Twitter">
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    					<li class="SocialLink__item">
    						<a class="AccessibleLink SocialLink__item-link" href="https://www.pinterest.co.kr/nespresso/" target="_blank">
    							<img width="30" height="30" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=30 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=60 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=90 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=120 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg?impolicy=small&amp;imwidth=30" class="ResponsiveImage SocialLink__item-img" alt="Pinterest">
    							<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    						</a>
    					</li>
    				</ul>
    			</div>
    			<a class="Footer__top-page-link" href="#top">??? ?????? ??????<span class="Footer__top-page-link-icon" aria-hidden="true">^</span></a>
    			<div class="FooterCopyright">
    				<a class="AccessibleLink FooterLink" href="http://localhost:8080/nespresso/home" target="_blank">
    					<img width="55" srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=55 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=110 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=165 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=220 4x" src="https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg?impolicy=small&amp;imwidth=55" class="ResponsiveImage FooterCopyright__picture" alt="Nespresso KR Homepage">
    					<span class="VisuallyHidden">??? ????????? ????????? ?????? ?????????.</span>
    				</a>
    				<span><em>Nespresso</em> S.A. 2021</span>
    			</div>
    		</div>
    	</div>
    </div>
<script>
              window.ui = window.ui || [];
              window.ui.push({"id":"CompanyFooterRespBlock-8797707806480-f034d0cc-fa27-49c2-af24-4611392d490b","module":"Footer","configuration":{"translations":{"companyfooterrespblock.a11y.sociallinks.title":"??????????????? ??????","companyfooterrespblock.a11y.link.target.blank":"??? ????????? ????????? ????????????.","companyfooterrespblock.a11y.languageandcountry.title":"?????? ??? ?????? ??????","companyfooterrespblock.a11y.currentcountries.label":"?????? ???????????? ??????????????? ?????? ???????????????. ?????? ????????? ????????????, ????????? ???????????????.","companyfooterrespblock.a11y.websitelinks.title":"???????????? ??????"},"props":{"meta":{"uid":"CompanyFooterRespBlock-8797707806480-33848249-bb43-4642-a6a1-04371a857eb7","restrictions":[],"tracking":null},"copyrightLabel":"<em>Nespresso</em> S.A. 2021","topPageLinkLabel":"??? ?????? ??????","logoLink":{"meta":{"uid":"respFooterLogoImageLink-8831166448700-8c40b4ad-519c-4740-ac15-21ea4c4322f8","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterLogoLink-8810260157939-b5ca70d5-6157-4fd4-b7fe-df22dcf3f6e5","restrictions":[],"tracking":null},"name":"Nespresso KR Homepage","url":"/kr/ko/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072114718/logo-white.svg","altText":"Nespresso Logo"}},"line1Links":[{"meta":{"uid":"respFooterL1LegalLink-8810259961331-c31c00ca-ecb9-4cf3-912f-f2a57035d1fd","restrictions":[],"tracking":null},"name":"??????????????????","url":"/kr/ko/terms-and-condition","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1PrivacyPolicyLink-9046867432947-9273100e-5f87-4805-ba5f-1f96a56032f8","restrictions":[],"tracking":null},"name":"???????????? ????????????","url":"/kr/ko/privacy-policy","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooter1CookieLink-9046966588915-38b25389-022c-4a20-8766-9be06e98cd7f","restrictions":[],"tracking":null},"name":"??????","url":"/kr/ko/cookies","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1ContactLink-8810259994099-b5e70dac-746e-45ba-b3f9-21305f2ced9b","restrictions":[],"tracking":null},"name":"????????????","url":"/kr/ko/service-customer-care","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL1BusinessSolutionsLink-8810260059635-40976511-99ea-42b9-baa5-847d5b91a14f","restrictions":[],"tracking":null},"name":"??????????????? ???????????????","url":"http://www.nespresso.com/pro/kr/ko/home","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}}],"line2Links":[{"meta":{"uid":"respFooterL2RecipeLink-8811103966707-b8631883-a2bf-401c-b8ff-5bddb73ba556","restrictions":[],"tracking":null},"name":"?????? ?????????","url":"https://www.nespresso.com/recipes/kr/ko/coffee-recipes.html","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2GlossaryLink-8810260026867-b52ab26e-7af1-46df-9203-7721904166f4","restrictions":[],"tracking":null},"name":"????????????","url":"/kr/ko/glossary","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2AboutUsLink-8810260125171-3365b7ac-588a-4ba5-b0a8-f7285079e924","restrictions":[],"tracking":null},"name":"????????????","url":"http://www.nestle-nespresso.com/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2careerLink-8812190324211-4cf26868-d7d5-49b4-80c0-9cdac3313229","restrictions":[],"tracking":null},"name":"??????","url":"https://www.nespresso.com/careers/?m=KR&l=KO#/","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2SitemapLink-8810260092403-1e00f17f-7353-48ec-817b-08aa5c9cc3c0","restrictions":[],"tracking":null},"name":"????????????","url":"/kr/ko/sitemap","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},{"meta":{"uid":"respFooterL2AccessibilityLink-8811823191539-72af4533-ddeb-47d2-b03b-6c595f2a0eac","restrictions":[],"tracking":null},"name":"??? ?????????","url":"/kr/ko/accessibility","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}}],"countriesPageLink":{"meta":{"uid":"respCMSSiteCountriesLink-8810918696435-15ac9b42-d7e2-44d4-9188-3f121d8c97d4","restrictions":[],"tracking":null},"name":"?????? ??? ?????? ??????","url":"/kr/ko/country","target":"SAMEWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"followLabel":"??????????????? ????????? ????????? ?????????","socialLinks":[{"meta":{"uid":"respFooterSocialInstaImageLink-8832763692092-cb7aa160-81e6-413a-95f3-e2ae595c52fe","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialInstaLink-8811724953075-b569df9f-3fff-4f29-96f9-bd32ad5fb7c3","restrictions":[],"tracking":null},"name":"Nespresso Instagram","url":"https://www.instagram.com/nespresso.kr/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/11896944984094/insta.svg","altText":"Nespresso Instagram"}},{"meta":{"uid":"respFooterSocialFacebookImageLink-8831166481468-271660cf-e3a8-4fec-8da5-f9bebad4bd9c","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialFacebookLink-8810260190707-6a8cc139-536a-4f5e-94d4-4309dc12ddd3","restrictions":[],"tracking":null},"name":"????????????","url":"https://www.facebook.com/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072180254/facebook.svg","altText":"Nespresso Facebook"}},{"meta":{"uid":"respFooterSocialYoutubeImageLink-8831166514236-91f8fece-a81a-46a4-b293-c75ab719e0dc","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialYoutubeLink-8810260256243-6b174715-af9c-422a-a57a-f00a9498cafa","restrictions":[],"tracking":null},"name":"YouTube","url":"https://www.youtube.com/user/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072245790/youtube.svg","altText":"Nespresso Youtube"}},{"meta":{"uid":"respFooterSocialTwitterImageLink-8831166547004-b7c45472-27fb-41d9-bf78-1dbfdf37a586","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialTwitterLink-8810260223475-eef7596f-18fe-4fa1-ac1a-f03b2145d77b","restrictions":[],"tracking":null},"name":"Twitter","url":"https://twitter.com/nespresso","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072311326/twitter.svg","altText":"Nespresso Twitter"}},{"meta":{"uid":"respFooterSocialPinterestImageLink-8831166579772-54ecfb83-e05b-48d3-9bf6-1704f2836f50","restrictions":[],"tracking":null},"link":{"meta":{"uid":"respFooterSocialPinterestLink-8810260289011-43369abd-4bae-446a-8318-8ba2ea523b95","restrictions":[],"tracking":null},"name":"Pinterest","url":"https://www.pinterest.com/nespresso/","target":"NEWWINDOW","color":null,"javascriptOnClick":null,"lightbox":{"meta":null,"title":null,"content":null,"options":[]}},"media":{"url":"https://www.nespresso.com/ecom/medias/sys_master/public/10595072376862/pinterest.svg","altText":"Nespresso Pinterest"}}]},"eCommerceData":null}});
            </script>
        <div id="block-8811141060085" class="free-html" data-label="">
    <style>
#truste-consent-track{position:relative!important;top:75px!important}
@media screen and (max-width:995px){#truste-consent-track{position:relative!important;top:50px!important}}
</style></div>

<div id="block-8811141518837" class="free-html" data-label="">
    <div class="footer-local ResponsiveContainer">		
	<div id="local-elements">
		<h3 class="visually-hidden">Website links</h3>
		<ul>
			<li>?????? : ?????????????????? ??????????????????</li>
			<li>????????? : ????????? ??????</li>
			<li>????????????????????? : 110-86-10100</li>
			<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1108610100" target="_blank">????????????????????? : 2014-???????????????-0247</a></li>
        </ul>
		<ul>
<li><a href="https://www.nespresso.com/kr/DebtGuaranteeInsurancePop
" target="_blank">????????????????????????</a></li>
			<li><a href="tel:0807341111">???????????? : 080-734-1111</a></li>
           <li><!--a href="https://www.nespresso.com/kr/en/contactus?icid=B2C_KRko_Homepage_AssistanceBand_contactus" target="_blank"-->????????? : club.korea@nespresso.com<!--/a--></li>
            <li>?????? : ????????? ???????????? ?????????70 ???????????????????????? 16???</li>
		</ul>
    </div>
</div>
<style>
body {word-break:keep-all !important;}
.footer-local {display:flex;}
.footer-local {padding:0 0 15px;}
.footer-local a {color:#986f38;}
@media screen and (min-width: 768px) {
#local-elements {flex-basis: auto;flex: 1;padding:0 12px;}
#local-elements > ul {display:flex;justify-content: center;text-align:center;padding: 0 0 2px;font-size: 0.7rem;}
#local-elements > ul  > li {padding:0 0 0 10px;}
}
@media screen and (max-width: 767px) {
#local-elements {flex-basis: auto;flex: 1;padding:0 12px;}
#local-elements > ul {display: inherit;justify-content: center;text-align:center;padding: 0 0 2px;font-size: 0.7rem;}
#local-elements > ul  > li {padding:0;}
}
</style>
</div>

<div id="block-8813165827573" class="free-html" data-label="">
    <div id="jusopop" class="ko">
	<div class="wrapper">
	<div id="addressclose">??</div>
	<form name="form" id="juso" method="post">
		<input type="hidden" name="currentPage" value="1" style=""> 
		<input type="hidden" name="countPerPage" value="10" style="">
		<input type="hidden" name="resultType" value="json" style=""> 
    <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk=" style="">
    <!--  <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk="/>  // kr -->
    <!-- 	<input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE4MTIyMDA5NTU0OTEwODM5Mjg="/> // eng -->
		<input type="text" name="keyword" value="">
		<input type="button" id="searchbtn" onclick="enterSearch();" value="?????? ??????">
		<div class="getAddrInfor">	
			<p class="caution">????????? ?????? ???????????? ????????? ????????? ?????? ????????? ????????? ???????????????.</p>
			<div class="container-flex col2">
				<div class="col">
					<div class="example">
						<p class="sample-1">1. ????????? + ????????????</p>
						<p class="sample-2">???) ????????? 70</p>
					</div>
					<div class="example">
						<p class="sample-1">2. ?????????(???/???) + ??????</p>
						<p class="sample-2">???) ????????? 332</p>
					</div>
				</div>
				<div class="col">
					<div class="example">
						<p class="sample-1">3. ?????????(???/???) + ?????????(????????????)</p>
						<p class="sample-2">???) ????????? ????????????????????????</p>
					</div>
					<div class="example">
						<p class="sample-1">4. ???????????? + ??????</p>
						<p class="sample-2">???) ??????????????????????????? 1~100</p>
					</div>
				</div>
			</div>
		</div>
		<div id="list"></div>
		<div class="paginate" id="pageApi"></div>
	</form>
	</div>
	</div>
<style>
.displaynone {
  display: none !important;
}
/*.registration-machine__intro {
 display:none !important;
 }
 #register-machine-selection {
 display:none !important;
 }
 #select-technology {
 display:block !important;
 }*/
/*#ta-continue-bottom {
 opacity:.5;
 }*/
#kr-private.addressDetailsDTO.line1, #ta-registration-address-shipping-line1 {
  display: inline;
}
.input-group .input-label {
  white-space: unset !important;
}
.input-row__secondPhone {
  display: none !important;
}
#addressclose {
  position: absolute;
  top: 20px;
  right: 20px;
  display: block;
  color: #000;
  font-size: 40px;
}
.addressbtn {
  margin: 0 0 0 5px;
  height: 47px;
  border: 1px solid #d5d5d5;
  border-radius: 3px;
  width: calc(20% - 5px);
  background-color: #fff;
  color: #000;
  display: block;
  position: absolute;
  right: 0px;
  top: 0px;
}
.addressbtn svg {
  width: 40px;
  height: 40px;
}
#jusopop {
  z-index: 99999;
  display: none;
  position: fixed;
  background: rgba(0, 0, 0, 0.6);
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
}
#jusopop .wrapper {
  transform: translate(-50%, -50%);
  background: #fff;
  top: 50%;
  left: 50%;
  position: absolute;
  overflow-y: scroll;
  overflow-x: hidden;
  height: auto;
}
#jusopop .wrapper #searchbtn {
  background: #fff;
  border: 1px solid #d5d5d5;
  padding: 10px;
}
#jusopop .wrapper input[name='keyword'] {
  padding: 10px;
  border: 1px solid #ccc;
}
#jusopop .wrapper #list {
  color: #000;
}
#jusopop .wrapper #list dl {
  margin: 15px 0;
  display: flex;
  flex: 0 0 auto;
}
#jusopop .wrapper #list dl dd button {
  background: #c4c4c4;
  border-radius: 3px;
  color: #000;
  border: none;
}
#jusopop .wrapper #list dl dd button:hover {
  color: #fff;
  background: #000;
}
#jusopop .wrapper #list dl dd:nth-child(1) {
  font-weight: bold;
  width: 20%;
}
#jusopop .wrapper #list dl dd:nth-child(2) {
  width: 60%;
  margin: 0 5%;
}
#jusopop .wrapper #list dl dd:nth-child(3) {
  width: 10%;
}
#jusopop .wrapper .paginate {
  text-align: center;
}
#jusopop .wrapper #juso {
  position: relative;
}
#jusopop .wrapper .container-flex {
  display: flex;
  flex: 1 1 auto;
  padding: 10px 0;
}
#jusopop .wrapper .container-flex .col {
  width: 40%;
  padding: 0px 5%;
  flex: 1;
}
#jusopop .wrapper .container-flex .col:nth-child(2) {
  border-left: 1px solid #858585;
}
#jusopop .wrapper .container-flex .col .example {
  padding: 15px 10px 10px;
}
#jusopop .wrapper .container-flex .col .sample-1 {
  color: #000;
}
#jusopop .wrapper .container-flex .col .sample-2 {
  color: #858585;
}
#jusopop .wrapper .caution {
  font-size: 14px;
  color: #858585;
  padding: 30px 5% 15px;
  text-align: left;
}
@media (min-width: 320px) and (max-width: 767px) {
  .ng-pristine {
    position: relative;
  }
  #jusopop {
    overflow-y: scroll;
  }
  #jusopop .wrapper {
    width: 100%;
    min-height: 100%;
    padding: 50px 15px;
    transform: unset !important;
    background: #fff;
    top: 0;
    left: 0;
  }
  #searchbtn {
    position: absolute;
    font-size: 11px;
    top: 0px;
    right: 0px;
    height: 40px;
  }
  .paginate {
    font-size: 12px;
  }
  #list dd:nth-child(1) {
    font-size: 14px;
  }
  #list dd:nth-child(2) {
    font-size: 11px;
  }
  #list dd:nth-child(3) {
    width: 20%;
  }
  #list dd button {
    padding: 5px;
    width: 100%;
    display: block;
  }
  .container-flex {
    font-size: 11px;
  }
}
@media (min-width: 768px) and (max-width: 995px) {
  #jusopop .wrapper {
    width: 80%;
    min-height: 80%;
    padding: 30px;
  }
  #kr-private.addressDetailsDTO.line1, #ta-registration-address-shipping-line1 {
    width: 70%;
  }
  .input-group input[type=email], .input-group input[type=password], .input-group input[type=tel], .input-group input[type=text] {
    color: #000 !important;
  }
  .mixin__input {
    color: #000 !important;
  }
  #searchbtn {
    background: #fff;
    border: 1px solid #d5d5d5;
    padding: 10px;
  }
  .paginate {
    font-size: 20px;
  }
  #list dd:nth-child(1) {
    font-size: 24px;
  }
  #list dd:nth-child(2) {
    font-size: 14px;
  }
  #list dd button {
    padding: 10px;
  }
  .container-flex {
    font-size: 13px;
  }
}
@media (min-width: 996px) {
  #jusopop .wrapper {
    width: 50%;
    min-height: 50%;
    padding: 50px;
  }
  #jusopop input[name='keyword'] {
    width: 74%;
  }
  #kr-private.addressDetailsDTO.line1, #ta-registration-address-shipping-line1 {
    display: inline;
  }
  #searchbtn {
    width: 25%;
  }
  .paginate {
    font-size: 20px;
  }
  #list dd:nth-child(1) {
    font-size: 30px;
    font-weight: bold;
    width: 20%;
  }
  #list dd:nth-child(2) {
    font-size: 16px;
    width: 60%;
    margin: 0 5%;
  }
  #list dd:nth-child(3) {
    width: 10%;
  }
  #list dd button {
    padding: 10px;
  }
  .container-flex {
    font-size: 14px;
  }
}

</style>
<script>
// checkout delivery, enter registration confirmation, checkout confirmation, account checkout, account save checkout, account save address, account edit address
var lang  = {
  "ko": {
    "caution":"????????? ?????? ???????????? ????????? ????????? ?????? ????????? ????????? ???????????????.",
    "placeholder":"????????? ???????????????",
    "key":"U01TX0FVVEgyMDE4MDYyMTE2MDEwNDEwNzk1Njk=",
    "btn":"?????? ??????",
    "example":[
      {"type":"1. ????????? + ????????????","ex":"???) ????????? 70"},
      {"type":"2. ?????????(???/???) + ??????","ex":"???) ????????? 332"},
      {"type":"3. ?????????(???/???) + ?????????(????????????)","ex":"???) ????????? ????????????????????????"},
      {"type":"4. ???????????? + ??????","ex":"???) ??????????????????????????? 1~100"}
    ],
    "apply":"??????",
    "ajax":"https://www.juso.go.kr/addrlink/addrLinkApiJsonp.do"
  },
  "en": {
    "caution":"Please fill in the form below.",
    "placeholder":"Input Road Name Address",
    "key":"U01TX0FVVEgyMDE4MTIyMDA5NTU0OTEwODM5Mjg=",
    "btn":"Search",
    "example":[
      {"type":"1. Road Name + Building No.","ex":"Ex) 209, Sejong-daero"},
      {"type":"2. Districts Dong/Ri + Bungi","ex":"Ex) Migeun-dong 332"},
      {"type":"3. Districts Dong/Ri + Building(APT) No.","ex":"Ex) Migeun-dong Westgate Tower"},
      {"type":"4. Mailbox + No.","ex":"Ex) Seodaemun Post Office Mailbox 1~100"}
    ],
    "apply":"APPLY",
    "ajax":"https://www.juso.go.kr/addrlink/addrEngApiJsonp.do"
  }
};
 var type, addr;
// set Language
var langset = $('html').attr('lang');
// var langset = "ko";
$('#jusopop').addClass(langset);
$('.caution').text(lang[langset].caution);
$('#juso > input[name="confmKey"]').val(lang[langset].key);
$('#searchbtn').val(lang[langset].btn);
$('.example').each(function(i){
  $(this).children("p").eq(0).text(lang[langset].example[i].type);
  $(this).children("p").eq(1).text(lang[langset].example[i].ex);
})

function getAddr(){
		$.ajax({
			 url :lang[langset].ajax  //????????????
			,type:"post"
			,data:$("#juso").serialize()
			,dataType:"jsonp"
			,crossDomain:true
			,success:function(jsonStr){
				$("#list").html("");
				var errCode = jsonStr.results.common.errorCode;
				var errDesc = jsonStr.results.common.errorMessage;
				if(errCode != "0"){
					$("#pageApi").html("");
    				if(errCode ==  "E0001"){ alert("???????????? ?????? KEY?????????."); }
    				else if(errCode ==  "E0005"){ alert("???????????? ??????????????????."); }
            else if(errCode ==  "E0006"){ alert("?????????????????? ????????? ???????????????."); }
            else { alert("????????? ?????????????????????. ????????? ?????? ??????????????????."); }
				}else{
					if(jsonStr != null){
						makeListJson(jsonStr);
						pageMake(jsonStr);
						actBtn(jsonStr);
					}
				}
			}
			,error: function(xhr,status, error){
				alert("error");
			}
		});
	}
	var $target, target;
	
	function goPage(pageNum){
		document.form.currentPage.value=pageNum;
		getAddr();
	}
	
	function pageMake(jsonStr){ 
		var total = jsonStr.results.common.totalCount; // ????????? 
    console.log("?????????:"+total);
		var pageNum = document.form.currentPage.value;// ???????????????
		var paggingStr = "";
		if(total < 1){
      var htmlStr = "<div class='result'><p>??????????????? ????????????.</p></div>";
  		$("#list").html(htmlStr);
	  	$("#pageApi").html("");
		} else {
      if(total > 1000){
        total=1000;
      }
			// var PAGEBLOCK= document.form.countPerPage.value;
			// var pageSize= document.form.countPerPage.value;
      var PAGEBLOCK=10; 
  		var pageSize=10; 
			var totalPages = Math.floor((total-1)/pageSize) + 1;
			var firstPage = Math.floor((pageNum-1)/PAGEBLOCK) * PAGEBLOCK + 1;		
			if( firstPage <= 0 ) firstPage = 1;		
			var lastPage = firstPage-1 + PAGEBLOCK;
			if( lastPage > totalPages ) lastPage = totalPages;		
			var nextPage = lastPage+1 ;
			var prePage = firstPage-5 ;		
			if( firstPage > PAGEBLOCK ){
				paggingStr +=  "<a href='javascript:goPage("+prePage+");' style='font-weight:normal;color:#121212;'>???</a>  " ;
			}		
			for( i=firstPage; i<=lastPage; i++ ){
				if( pageNum == i )
					paggingStr += "<a style='font-weight:bold;color:black' href='javascript:goPage("+i+");'>" + i + "</a>  ";
				else
					paggingStr += "<a href='javascript:goPage("+i+");' style='font-weight:normal;color:#666;'>" + i + "</a>  ";
			}		
			if( lastPage < totalPages ){
				paggingStr +=  "<a href='javascript:goPage("+nextPage+");' style='font-weight:normal;color:#121212;'>???</a>";
			}		
			$("#pageApi").html(paggingStr);
		}	
	}
	
	function goPopup(index) {
		//$('.address-form-popin').addClass('displaynone');
		$("#juso input[name='keyword']").val('');
		$("#list, #pageApi").html('')
		$('.getAddrInfor').show();
		$('#jusopop').show();
    if(index == 0) {
      var wt = "shipping";
    } else { wt = "billing";}
    type = "#ta-registration-address-"+wt+"-";  
    $('.address-form-popin').hide();
    
    // console.log(type);
	}
	function makeListJson(jsonStr){
		var htmlStr = "";
		htmlStr += "<div id='result'>";
		$(jsonStr.results.juso).each(function(i){
			htmlStr += "<dl data-seq='"+i+"'>";
			htmlStr += "<dd>"+this.zipNo+"</dd>";
			htmlStr += "<dd><p><b>"+this.roadAddr+"</b></p><p>"+this.jibunAddr+"</p></dd>";
			htmlStr += "<dd><button id='insert' data-seq='"+i+"' type='button'>"+lang[langset].apply+"</button></dd>";
			htmlStr += "</dl>";
		});
		htmlStr += "</div>";
		$("#list").html(htmlStr);
	}
	
	function enterSearch() {
	  $('.getAddrInfor').hide();        
    getAddr(); //jsonp????????? enter?????? 
	}

	function searchbtn(){
		if($('#address-form-container').length > 0) { // address-form-container
			console.log("#address-form-container");
			$btn = [$("input[id*='addressDetailsDTO.line1']")];
      $("[id$='line1'],[id$='zip'],[id$='city']").prop('readonly', true);
		} else if($('#rgstr-form-3-shipping-address').length > 0){ // enter registeration confirmation 
			console.log("#rgstr-form-3-shipping-address");
			$btn = [$('input[id$="line1"]')];
      $("[name$='line1'],[name$='zip'],[name$='city']").prop('readonly', true);
		} 
    $('#addressclose').on('click',function(){$('#jusopop').hide();$('.address-form-popin').show();}) 
		$btn.forEach(function(ele,index){
      $btn[index].after('<button class="addressbtn addressbtn'+index+'" data-seq="'+index+'" type="button" onclick="goPopup('+index+')"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 24"><g id="Icons" style="opacity:0.75;"><path id="search" d="M16.021,15.96l-2.374-2.375c-0.048-0.047-0.105-0.079-0.169-0.099c0.403-0.566,0.643-1.26,0.643-2.009  C14.12,9.557,12.563,8,10.644,8c-1.921,0-3.478,1.557-3.478,3.478c0,1.92,1.557,3.477,3.478,3.477c0.749,0,1.442-0.239,2.01-0.643 c0.019,0.063,0.051,0.121,0.098,0.169l2.375,2.374c0.19,0.189,0.543,0.143,0.79-0.104S16.21,16.15,16.021,15.96z M10.644,13.69	 c-1.221,0-2.213-0.991-2.213-2.213c0-1.221,0.992-2.213,2.213-2.213c1.222,0,2.213,0.992,2.213,2.213 C12.856,12.699,11.865,13.69,10.644,13.69z"/></g></svg></button>');
    })
	}

 

	function actBtn(jsonStr){
		var target;
		$("#list button, #list dl").each(function(index) {
		$(this).on("click", function(){
			let seqid = $(this).data('seq'), juso = $(jsonStr.results.juso).eq(seqid);
			let zipcode = juso[0].zipNo,
			siNm  = juso[0].siNm;
		  if($('#address-form-container').length > 0){
		  	target = 1;
			} else if($('#rgstr-form-3-shipping-address')){
				target = 0;
			} 
      if(langset == "ko") {
          addr = juso[0].roadAddrPart1;
      } else {
        addr = juso[0].buldMnnm+', '+juso[0].rn+', '+juso[0].sggNm;
      }
		  $('.address-form-popin').removeClass('displaynone');
			switch(target){
				case 0:  // enter registeration
					$(type+"zip").val(zipcode).trigger('input').focusin();
					$(type+"line1").val(addr).trigger('input').focusin();;
					$(type+"city").val(siNm).trigger('input').focusin();;
					$(type+"line2").val(juso[0].roadAddrPart2).val(juso[0].roadAddrPart2).attr("placeholder",juso[0].roadAddrPart2);
					break;
				case 1: // Account Edit Address / 
					$('input[id*="zipCode"]').val(zipcode);
					$('input[id*="line1"]').val(addr);
					$('input[id*="city"]').val(siNm);
					$('input[id*="line2"]').val(juso[0].roadAddrPart2).attr("placeholder",juso[0].roadAddrPart2);
					$('input[id*="zipCode"], input[id*="line1"], input[id*="city"]').trigger('input').focusin();
					break;
				default:
					break;
			}
			$('#jusopop').hide();
      $('.address-form-popin').show();

		});
	});
	}

$(window).on('load', function(){ 
  if($('#address-form-container').length > 0) {
      searchbtn();
    $('[for^="addressaddressType"]').on("click change", function(){
        searchbtn();
        console.log("add searchbtn");
    })
  } else if($('#rgstr-form-3-shipping-address').length > 0) {
    searchbtn();
  } 
  $(document).on('keyup keydown keypress', 'form input[type="text"]', function(e) {
  if(e.which == 13) {
  	e.preventDefault();
  	return false;
  }
  });

  $('.addressbtn').prev().click(function(){
      var seqid = $(this).data('seq');
      goPopup(seqid);
    })

  $('#juso input[name="keyword"]').on('keyup keypress', function(e) {
	    var keyCode = e.keyCode || e.which;
      console.log(keyCode);
	    if (keyCode === 13) { 
        enterSearch(); //jsonp????????? enter?????? 
    } 
  });
})
</script>

</div>

<div id="block-8813433968117" class="free-html" data-label="">
    
</div>

<script defer="">
    (function() {
      'use strict';

      var popinConfiguration = {
        modal: true,
        closeText: '',
        dialogClass: 'popin-dialog-open dark ui-popin',
        title: '',
        width: 838,
        resizable: false,
        closeOnEscape: true,
        draggable: false,

        close: function () {},
        create: function() {
            var jThis = $(this);
            jThis.find('.vscroll').jScrollPane();
            // Update jquery dialog
            jThis.on( 'dialogopen', function() {
                var closeIcon = $('<i class="Glyph Glyph--cross lightbox__close-icon" aria-hidden="true" />');
                // Add responsive close glyph if doesn't exist
                if(jThis.parent().find('.lightbox__close-icon').length === 0) {
                    jThis
                        .parent()
                        .find('.ui-dialog-titlebar-close')
                        .prepend(closeIcon);
                }
            });
        },
        
      };

      if (/account-not-activated/.test(location.search)) {
        var execEmail = /email=([^&#]*)/.exec(location.search);

        if (execEmail) {
          console.log('not-activated', execEmail[1], config.urls.resendActivationEmailUrl);
          var resendActivationEmailUrl = config.urls.resendActivationEmailUrl + '?email=' +
          encodeURIComponent(decodeURIComponent(execEmail[1]));
          setTimeout(function() {
            var jLightbox = $("#account-not-activated-lightbox");
            jLightbox.on("click", ".dialog__ok-button", function(e) {
                location.href = resendActivationEmailUrl;
                return false;
              });
            jLightbox.dialog(popinConfiguration);
          },0);
        }
      }
    })()
    </script>
    <div id="account-not-activated-lightbox" class="confirm-info-dialog display-none responsive-popin" data-nes-lightbox="account-not-activated-lightbox" data-dlg-attributes="
    {
        &quot;autoOpen&quot;: false,
        &quot;width&quot;: 838,&quot;dialogClass&quot;: &quot;popin-dialog-open dark popin-page&quot;,&quot;closeText&quot;: &quot;&quot;
    }
    ">
    <div>
        <div>
            <div class="art-title popin-title">
        ?????? ????????? ???????????? ???????????????.</div>
      <div class="text-center popin-content">
        <p class="subtitle">
          ????????? ???????????? ????????? ????????? ??????????????????. ????????? ?????? ????????? ?????? ?????? ????????? ???????????? ????????? ???????????? ????????????.</p>
        <a class="btn button-grey button-primary button-grey-shadow dialog__ok-button" title="????????? ?????? ?????????">
          ????????? ?????? ?????????</a>
      </div>
    </div>
    </div>
</div></div></footer>

</body>
</html>