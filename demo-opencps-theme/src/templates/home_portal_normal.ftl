<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${site_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<!-- <link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=666" rel="stylesheet" type="text/css"> -->
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=666" rel="stylesheet" type="text/css">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	
	<script type="text/javascript">${tracking_script}</script>
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

		<footer id="footer">
			<p class="owner">Đơn vị quản lý: <b>Văn phòng UBND Tỉnh</b></p>
			<p class="info">
				<span>Địa chỉ: </span>
				<span class="hid">|</span>
				<span>Điện thoại: (024) 6262 7617</span>
				<span class="hid">|</span>
				<span>Email: </span>
			</p>
			<p style="display: inline-block; position: absolute; right: 10px; bottom: 15px; font-style: italic;">Trang demo là sản phẩm của đề tài Natif</p>
		</footer>
	</div>

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
			background: url("/o/demo-opencps-theme/images/main-bg.jpg") center center no-repeat;
			background-size: cover;
		}
		
		#navigation {
			background: none #00396f;
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
			background: none #00aeff;
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
			background: none #00396f;
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
		
		#navigation li a[href$="danh-gia-can-bo"] {
			display: none;
		}
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