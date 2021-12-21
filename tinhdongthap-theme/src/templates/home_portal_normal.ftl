<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Cổng Dịch vụ công Tỉnh Đồng Tháp</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap&subset=vietnamese" rel="stylesheet"> -->
	<link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=8283188" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=8888123" rel="stylesheet" type="text/css">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/vgcaplugin.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	
	<!-- Begin Gov Tracking Code -->
	<script type="text/javascript">
		var _govaq = window._govaq || [];
	_govaq.push(['trackPageView']);
	_govaq.push(['enableLinkTracking']);
	(function () {
		_govaq.push(['setTrackerUrl', 'https://f-emc.ngsp.gov.vn/tracking']);
		_govaq.push(['setSiteId', '33']);
		var d = document,
			g = d.createElement('script'),
			s = d.getElementsByTagName('script')[0];
		g.type = 'text/javascript';
		g.async = true;
		g.defer = true;
		g.src = 'https://f-emc.ngsp.gov.vn/embed/gov-tracking.min.js';
		s.parentNode.insertBefore(g, s);
	})();
	</script>
	<!-- End Gov Tracking Code -->
</head>

<body class="${css_class} home-theme">

	<!-- <@liferay_ui["quick-access"] contentId="#main-content" /> -->

	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_top_include />
		<@liferay.control_menu />
	<#else>
		<style>
			html .has-control-menu #wrapper {
				margin-top: 0 !important;
			}
			html body.open #wrapper {
				padding-left: 0 !important;
			}
		</style>
	</#if>

	<div class="" id="wrapper">
		<header id="banner">
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</header>
		
		<section id="content">	
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>
		<!--  -->
		<div class="hotline-phone-ring-wrap">
			<div class="hotline-phone-ring">
				<div class="hotline-phone-ring-circle"></div>
				<div class="hotline-phone-ring-circle-fill"></div>
				<div class="hotline-phone-ring-img-circle">
					<a href="tel:1900866699" class="pps-btn-img">
						<img src="/o/tinhdongthap-theme/images/ring-phone.png"
							alt="Số điện thoại" width="50">
					</a>
				</div>
				<a href="tel:1900866699" style="
					width: 255px;
					height: 31px;
					line-height: 31px;
					background-color: #74b920;
					color: #fff;
					position: absolute;
					left: 51px;
					top: 38px;
					padding-left: 28px;
					z-index: 2 !important;
					border-bottom-right-radius: 15px;
					border-top-right-radius: 15px;
				"><span>Tổng đài giải đáp</span>:<span style="font-size: 16px;font-weight: 500;"> 1900.86.66.99</span></a>
			</div>
		</div>
		<!--  -->
		<footer id="footer">
			<img src="${themeDisplay.getPathThemeRoot()}/images/lotus.png"/>
			<!--<div class="statistics">Đang online: <span class="online">3</span> / <span class="total">122</span></div>-->
			<p class="owner">Đơn vị quản lý: <b>ỦY BAN NHÂN DÂN TỈNH ĐỒNG THÁP</b></p>
			<p class="info">
				<span>Địa chỉ: Số 12, đường 30/4, phường 1, thành phố Cao Lãnh, tỉnh Đồng Tháp</span>
				<span class="hid">|</span>
				<span>Hỗ trợ sử dụng phần mềm: 024.668.22443/ 02773873995/ 02773856113</span>
				<span class="hid">|</span>
				<span>Email: motcuadichvucong@gmail.com</span>
			</p>
		</footer>
	</div>
	<!-- inject thong-ke-truy-cap -->
	<script>
		var settingsGetTracking = {
			"url": "https://thongke.opencps.vn",
			"method": "GET",
			"headers": {
			},
			"data": {
				"module": "API",
				"method": "Live.getCounters",
				"idSite": "5",
				"lastMinutes": "1",
				"format": "JSON",
				"token_auth": "1811b03abf29e86ee2532678d70b31b0"
			}
		};
		var getTracking = function () {
			var xhr = new XMLHttpRequest();
			xhr.withCredentials = true;
			xhr.addEventListener("readystatechange", function() {
				try {
					$("#counterVisitor").html(JSON.parse(this.responseText)[0]['visitors'])
				} catch (error) {
				}
			});
			xhr.open("GET", "https://thongke.opencps.vn/?module=API&method=Live.getCounters&idSite=5&lastMinutes=3&format=JSON&token_auth=1811b03abf29e86ee2532678d70b31b0")
			xhr.send()
		}
		setTimeout(function () {
			getTracking()
		}, 500)
		
	</script>
	<!--  -->
	<style>
		html {
			overflow: auto;
		}
		body #wrapper {
			padding-top: 0;
		}
		body a, body a:hover, body a:focus {
			text-decoration: none;
			color: inherit;
		}
		
		body {
			font-family: 'Open Sans', sans-serif;
			font-size: 14px;
		}
		.home-theme {
			background: url("/o/tinhdongthap-theme/images/main-bg.jpg") center center no-repeat;
			background-size: cover;
		}
		
		#navigation {
			background: url("/o/tinhdongthap-theme/images/bg-nav.jpg") left top repeat-x;
			background-size: auto 100%;
			position: relative;
		}
		#navigation ul {
			list-style: none;
			display: -webkit-box;
			display: flex;
			max-width: 1300px;
			margin: auto;
			padding: 0 15px;
		}
		#navigation li a {
			display: block;
			padding: 10px 15px;
			color: white;
			text-transform: uppercase;
		}
		#navigation .selected a, #navigation li:hover a {
			background: url("/o/tinhdongthap-theme/images/nav-active.jpg") left top repeat-x;
			background-size: auto 100%;
			font-weight: bold;
		}
		#navigation li > ul, #navigation .nav-toggle {
			display: none;
		}
		#navigation .nav-toggle {
			display: none;
			width: 40px;
			text-align: center;
			line-height: 28px;
			border: 1px solid white;
			border-radius: 4px;
			color: white;
			font-size: 20px;
			font-size: 18px;
			margin: 10px 15px;
		}
		
		@media screen and (max-width: 991px) {
			#navigation .nav-toggle {
				display: inline-block;
			}
			body #navigation > ul {
				display: none;
				width: 100%;
				position: absolute;
				background-color: white;
				left: 0;
				top: 100%;
				border: 1px solid #ccc;
				padding: 0;
				max-height: 200px;
				overflow: auto;
			}
			body #navigation > ul a {
				color: #204b03;
			}
			#navigation .selected a, #navigation li:hover a {
				color: white;
			}
		}
		
		#footer {
			text-align: center;
			background: url("/o/tinhdongthap-theme/images/bg-footer.jpg") left top repeat-y;
			background-size: 100% auto;
			color: white;
			padding: 10px 15px;
			position: relative;
		}
		#footer p {
			margin-bottom: 5px;
		}
		#footer p:last-child {
			margin-bottom: 0;
		}
		#footer > img {
			position: absolute;
			left: 0;
			bottom: 0;
		}
		#footer .statistics {
			position: absolute;
			bottom: 100%;
			right: 0;
			padding: 8px 15px;
			background-color: #224e01;
		}
		
		@media screen and (max-width: 1366px) {
			#footer > img {
				display: none;
			}
		}
		
		@media screen and (max-width: 767px) {
			#footer span {
				display: block;
				margin-bottom: 5px;
			}
			#footer .hid {
				display: none;
			}
		}
		/* hotline rings */
		.hotline-phone-ring-wrap {
			position: fixed;
			bottom: 0;
    		right: 200px;
			z-index: 999999;
			}

			.hotline-phone-ring {
			position: relative;
			visibility: visible;
			background-color: transparent;
			width: 110px;
			height: 100px;
			cursor: pointer;
			z-index: 11;
			-webkit-backface-visibility: hidden;
			-webkit-transform: translateZ(0);
			transition: visibility .5s;
			left: 0;
			bottom: 0;
			display: block;
			}

			.hotline-phone-ring-circle {
				width: 87px;
			height: 87px;
			top: 10px;
			left: 10px;
			position: absolute;
			background-color: transparent;
			border-radius: 100%;
			border: 2px solid #74b920;
			-webkit-animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
			animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
			transition: all .5s;
			-webkit-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			transform-origin: 50% 50%;
			opacity: 0.5;
			}

			.hotline-phone-ring-circle-fill {
				z-index: 5;
				width: 57px;
			height: 57px;
			top: 25px;
			left: 25px;
			position: absolute;
			background-color: #74b920;
			border-radius: 100%;
			border: 2px solid transparent;
			-webkit-animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
			animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
			transition: all .5s;
			-webkit-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			transform-origin: 50% 50%;
			}

			.hotline-phone-ring-img-circle {
				background-color: #74b920;
				z-index: 6;
				width: 33px;
			height: 33px;
			top: 37px;
			left: 37px;
			position: absolute;
			background-size: 20px;
			border-radius: 100%;
			border: 2px solid transparent;
			-webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
			animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
			-webkit-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			transform-origin: 50% 50%;
			display: -webkit-box;
			display: -webkit-flex;
			display: -ms-flexbox;
			display: flex;
			align-items: center;
			justify-content: center;
			box-shadow: 0 0 5px 2px rgb(0 0 0 / 24%);
			}

			.hotline-phone-ring-img-circle .pps-btn-img {
				display: -webkit-box;
			display: -webkit-flex;
			display: -ms-flexbox;
			display: flex;
			}

			.hotline-phone-ring-img-circle .pps-btn-img img {
				width: 20px;
				height: 20px;
			}

			.hotline-bar {
			position: absolute;
			background: rgba(230, 8, 8, 0.75);
			height: 40px;
			width: 200px;
			line-height: 40px;
			border-radius: 3px;
			padding: 0 10px;
			background-size: 100%;
			cursor: pointer;
			transition: all 0.8s;
			-webkit-transition: all 0.8s;
			z-index: 9;
			box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
			border-radius: 50px !important;
			/* width: 175px !important; */
			left: 33px;
			bottom: 37px;
			}

			.hotline-bar > a {
			color: #fff;
			text-decoration: none;
			font-size: 15px;
			font-weight: bold;
			text-indent: 50px;
			display: block;
			letter-spacing: 1px;
			line-height: 40px;
			font-family: Arial;
			}

			.hotline-bar > a:hover,
			.hotline-bar > a:active {
			color: #fff;
			}

			@-webkit-keyframes phonering-alo-circle-anim {
			0% {
				-webkit-transform: rotate(0) scale(0.5) skew(1deg);
				-webkit-opacity: 0.1;
			}
			30% {
				-webkit-transform: rotate(0) scale(0.7) skew(1deg);
				-webkit-opacity: 0.5;
			}
			100% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
				-webkit-opacity: 0.1;
			}
			}
			@-webkit-keyframes phonering-alo-circle-fill-anim {
			0% {
				-webkit-transform: rotate(0) scale(0.7) skew(1deg);
				opacity: 0.6;
			}
			50% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
				opacity: 0.6;
			}
			100% {
				-webkit-transform: rotate(0) scale(0.7) skew(1deg);
				opacity: 0.6;
			}
			}
			@-webkit-keyframes phonering-alo-circle-img-anim {
			0% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
			}
			10% {
				-webkit-transform: rotate(-25deg) scale(1) skew(1deg);
			}
			20% {
				-webkit-transform: rotate(25deg) scale(1) skew(1deg);
			}
			30% {
				-webkit-transform: rotate(-25deg) scale(1) skew(1deg);
			}
			40% {
				-webkit-transform: rotate(25deg) scale(1) skew(1deg);
			}
			50% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
			}
			100% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
			}
			}
		/*  */
	</style>
	
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
			
			//Currently Online
			setInterval(function() {
				var number = 1 + Math.floor(Math.random() * 5);
				$('.online').text(number);
			},1000*60*5);
			
			
			//Total Visited
			var $badge = $('.total');
			setInterval(function() {
				var value = parseInt($badge.html());
				value = value + Math.floor(Math.random() * 15);
				$badge.html(value);
			},5000*60*15);
		});
	</script>

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
</body>

</html>