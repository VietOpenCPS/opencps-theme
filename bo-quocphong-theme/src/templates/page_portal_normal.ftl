<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Bộ Quốc phòng</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=12345" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=12345" rel="stylesheet" type="text/css">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="stylesheet">

	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/handlebars.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/alpaca.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment-with-locales.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-comments.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.textcomplete.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/svg-pan-zoom.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
</head>

<body class="${css_class} page-theme mBody">

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

	<div class="container-fluid" id="wrapper" style="overflow: hidden;">
		<header id="banner" class="container">
			<div class="logo-wrapper">
				<a href="/">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo-dvc.png">
				</a>		
				<div id="react-root" style="">
					<div id="app_login"></div>
				</div>
			</div>
		</header>
		
		<div class="nav-wrapper">
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
			<div class="btns">
				<a href="/web/bo-quoc-phong/register#/login-dichvucong" class="login"><i class="fa fa-user"></i> Đăng nhập</a>
				<a href="/web/bo-quoc-phong/register" class="register"><i class="fa fa-user-plus"></i> Đăng ký</a>
			</div>	
		</div>

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
			<p>Địa chỉ: Số 1B, Nguyễn Tri Phương, quận Ba Đình, thành phố Hà Nội</p>
			<p>Điện thoại: 069.553215</p>
			<p>Thư điện tử: info@mod.gov.vn</p>
		</footer>
		
	</div>
	
	<a href="" class="btt"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	<a href="/web/bo-quoc-phong" class="bth"><i class="fa fa-home" aria-hidden="true"></i></a>
		
	<!-- inject:js -->
	<script type="text/javascript" src="https://vietopencps.github.io/frontend-opencps-v2.1/o/opencps-frontend-cli/login/app/js/app.js"></script>
	<script type="text/javascript" src="https://vietopencps.github.io/frontend-opencps-v2.1/o/opencps-frontend-cli/login/app/js/chunk-vendors.js"></script>
	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />
	</#if>
	<!-- endinject -->
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf.js?t=9991"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf-table-extractor.js?t=9991"></script>

	<script type="text/javascript">		
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		
			$(".header_login .logo > img").attr("src","o/bo-quocphong-theme/images/logo-login-dvc.png");
			
			$(".body_login .header_login + div").append("<div class='temp-footer'><p>Địa chỉ: Số 1B, Nguyễn Tri Phương, quận Ba Đình, thành phố Hà Nội</p><p>Điện thoại: 069.553215</p><p>Thư điện tử: info@mod.gov.vn</p></div>");
			
			//Back to top
			var offset = 300,
				scroll_top_duration = 600;
				$back_to_top = $('.btt');
				$back_to_home = $('.bth');
				
			$(window).scroll(function(){
				( $(this).scrollTop() > offset ) ? $back_to_top.addClass('btt-is-visible') : $back_to_top.removeClass('btt-is-visible');
				( $(this).scrollTop() > offset ) ? $back_to_home.addClass('btt-is-visible') : $back_to_home.removeClass('btt-is-visible');
			});
			//Smooth scroll to top
			$back_to_top.on('click', function(event){
				event.preventDefault();
				$('body,html').animate({
					scrollTop: 0 ,
					}, scroll_top_duration
				);
			});
		});
		
		
		window.PDFJS.workerSrc = '${themeDisplay.getPathThemeRoot()}/js/pdf.worker.js?t=9991';
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
	
	<style>
		#wrapper {
			padding-top: 0 !important;
		}
		body #react-root .v-navigation-drawer--is-mobile:not(.v-navigation-drawer--close), 
		body #react-root .v-navigation-drawer--temporary:not(.v-navigation-drawer--close) {
			-webkit-box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
			box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
		}
		
		.login-wrapper {
			float: right;
		}
		.forgetten-password-input {
			width: 100%;
			line-height: 31px;
			font-size: 13px;
			padding-left: 10px;
			text-decoration: underline;
			color: #fff;
		}
		.action-btn-login-input {
			width: 100%;
			text-align: right;
		}
		.login-wrapper .login-input {
			display: -webkit-box;
			display: flex;
		}
		.login-wrapper .login-input .ico {
			position: relative;
			margin-left: 10px;
		}
		.login-wrapper .login-input .ico:first-child {
			margin-left: 0;
		}
		.login-wrapper .login-input .ico:before {
			content: "";
			font-family: FontAwesome;
			position: absolute;
			color: #005792;
			width: 30px;
			height: 100%;
			display: -webkit-box;
			display: flex;
			-webkit-align-items: center;
			align-items: center;
			-webkit-justify-content: center;
			justify-content: center;
		}
		.login-wrapper .login-input .ico-user:before {
			content: "\f007";
		}
		.login-wrapper .login-input .ico-pass:before {
			content: "\f023";
		}
		.login-wrapper .login-input .ico:after {
			content: "";
			position: absolute;
			top: 20%;
			left: 30px;
			width: 1px;
			height: 60%;
			background-color: #005792;
		}
		.login-wrapper .login-input input {
			height: 26px;
			width: 200px;
			border: 1px solid #005792;
			border-radius: 30px;
			padding-left: 35px;
			font-size: 12px;
			background: #fff;
		}
		.login-wrapper .login-input input:focus {
			outline: none;
		}
		.login-wrapper .btn-action {
			text-align: right;
		}
		.login-wrapper button {
			margin: 5px 0 0 5px;
			height: 26px;
			line-height: 26px;
			padding: 0 12px;
			color: white;
			-webkit-box-shadow: none;
			box-shadow: none;
			border: 0;
			border-radius: 30px;
			background-color: #005792;
			font-size: 12px;
			font-weight: bold;
			will-change: box-shadow;
			box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12);
		}
		.login-wrapper .btn-register {
			background-color: #fdb44b;
		}
		.login-wrapper button:hover {
			background-color: #00204a;
			cursor: pointer;
		}
		.login-wrapper .btn-register:hover {
			background-color: #0072bc;
			cursor: pointer;
		}
		#react-root .application--wrap {
			min-height: unset;
		}
		#react-root .application.theme--light {
			background: transparent !important;
			width: 100%;
		}
		#react-root .application--wrap {
			border-top: none !important;
		}
		#react-root .login-wrapper input {
			background-color: #fff;
		}
		#react-root .navigation-drawer{
			height: 100vh !important;
			z-index: 11;
		}
		#react-root .badge__badge {
			font-size: 10px;
			border-radius: 4px;
			height: 16px;
			width: auto;
			padding: 0 4px;
			right: -6px;
			top: -2px;
			min-width: 18px;
			z-index: 10;
		}
		#react-root {
			min-width: 300px;
			width: 100%;
			position: absolute;
			top: 15px;
			right: 15px;
		}
		#react-root .login_wrap_app_panel > div > div:last-child {
			left: auto !important;
			right: 0;
			top: 110% !important;
		}
		body #banner__content {
			padding: 0!important;
			height: 66px !important;
		}
		#banner #banner__content .logo {
			position: absolute;
		}
		body #banner .navigation-drawer--fixed {
			position: fixed !important;
		}
		#react-root .btn-toggle .btn__content {
			text-transform: none;
			background: #929292;
			color: #fff;
			font-size: 10px !important;
		}
		#react-root span {
			font-size: 13px;
			color: white;
			text-shadow: -1px -1px 0 #000, 
	             1px -1px 0 #000, 
	             -1px 1px 0 #000,  
	             1px 1px 0 #000;
		}
		#react-root span > i, #react-root .v-icon {
			color: white !important;
		}
		#react-root .btn-toggle .btn--active .btn__content {
			background: #fff;
			color: inherit;
		}
		#react-root .btn-toggle .btn--active .btn__content::before {
			opacity: 0;
		}
		#react-root .theme--light.chip,
		#react-root .theme--light .chip {
			background: transparent !important;
		}
		#react-root .menu__content {
			margin-top: 0;
		}
		#react-root .menu__content .list {
			margin-bottom: 0;
			padding: 0;
		}
		#react-root .menu__content .list>div > .list__tile {
			height: 32px;
			font-size: 13px;
			cursor: pointer;
		}
		#react-root .menu__content .list>div:hover {
			background-color: #eee !important;
		}
		#react-root .menu__content .list>div {
			border-bottom: 1px dashed #ddd;
			display: block;
			padding: 0;
			font-size: 13px;
			height: auto;
			color: rgba(0,0,0,.87);
			position: relative;
		}
		#react-root .chip .avatar {
			margin-right: 2px;
		}
		#react-root .chip .avatar img {
			width: 24px;
			height: 24px;
			margin-right: 0px !important;
		}
		#react-root .list__tile__action {
			min-width: 25px;
		}
		.user-profile-menu-react > div[class*='MuiPopover-paper'] {
			top: 5px !important;
			right: 0 !important;
			left: unset !important;
			position: absolute !important;
		}
		.user-profile-menu-react > div > ul > li {
			border-bottom: 1px dashed #adabab !important;
			padding: 5px 10px !important;
			font-size: 13px !important;
		}
		.user-profile-menu-react > div > ul {
			padding: 0 !important;
		}
		body .page-theme #navigation {
			border-top: 1px solid #ebebeb !important;
		}
		.v-window__container--is-active {
			height: auto !important;
		}
		
		
		.body_login {
			background: url("/o/bo-quocphong-theme/images/bg-login.jpg") center center no-repeat;
			background-size: cover;
		}
		.body_login #banner, .body_login #footer, .body_login .nav-wrapper {
			display: none !important;
		}
		.body_login .theme--light.application {
			background-color: transparent;
		}
		.body_login #login_container {
			max-width: 1300px;
			margin: auto;
			position: relative;
			top: 50%;
			left: 0;
			-webkit-transform: translateY(-50%);
			transform: translateY(-50%);
			padding: 0 15px;
		}
		.body_login .header_login {
			text-align: left !important;
		}
		.body_login .logo img {
			margin-bottom: 60px;
			max-width: 100%;
		}
		.body_login .header_login + div {
			margin: 0 !important;
		}
		.body_login nav.primary {
			background-color: transparent !important;
			border: 0 !important;
		}
		.body_login nav > div {
			-webkit-justify-content: left !important;
			justify-content: left !important;
		}
		.body_login nav h4 {
			font-size: 16px;
		}
		.body_login nav + div {
			border: 0 !important;
			padding: 0 !important;
		}
		.body_login .v-input__slot {
			background-color: transparent !important;
		}
		.body_login .v-input__slot:before, .body_login .v-input__slot:after {
			border: 1px solid #f00 !important;
		}
		.body_login .v-input__slot:hover:before {
			border: 1px solid #f00 !important;
		}
		.body_login .v-input__icon .v-icon {
			color: #f00 !important;
		}
		.body_login .v-text-field__slot input {
			font-size: 14px;
			/*color: white !important;*/
		}
		.body_login .v-text-field__slot input:-webkit-autofill,
		.body_login .v-text-field__slot input:-webkit-autofill:hover, 
		.body_login .v-text-field__slot input:-webkit-autofill:focus
		.body_login .v-text-field__slot input:-webkit-autofill {
			border:none !important;
			-webkit-text-fill-color: #f00 !important;
			transition: background-color 5000s ease-in-out 0s;
		}
		.body_login .v-text-field__slot input::-webkit-input-placeholder {color: #2a2a2a !important;}
		.body_login .v-text-field__slot input:-moz-placeholder {color:#2a2a2a !important; opacity: 1;}
		.body_login .v-text-field__slot input::-moz-placeholder {color: #2a2a2a !important; opacity: 1;}
		.body_login .v-text-field__slot input:-ms-input-placeholder {color: #2a2a2a !important;}
		.body_login .temp-footer {
			margin-top: 60px;
			font-size: 14px;
		}
		.body_login .header_login + div .primary--text, .body_login .header_login + div .v-input--selection-controls__ripple + i {
			color: #f00 !important;
		}
		.body_login button .v-icon {
			color: white !important;
		}
		.body_login .header_login + div .v-btn {
			background-color: #f00 !important;
			border-color: #f00 !important;
		}
		.body_login .theme--light.v-sheet {
			background-color: transparent !important;
			border: 0 !important;
		}
		
		
		body .btt, body .bth {
			position: fixed;
			bottom: 100px;
			right: 30px;
			background-color: #ca0202;
			width: 42px;
			height: 42px;
			border-radius: 50%;
			text-align: center;
			line-height: 40px;
			display: none;
			color: white;
			font-size: 24px;
		}
		body .btt.btt-is-visible, body .bth.btt-is-visible {
			display: block;
		}
		body .btt:hover, body .bth:hover {
			background-color: #ca0202;
			color: white !important;
		}
		body .bth {
			right: auto;
			left: 30px;
		}
		
		
		.page-theme .primary--text, .page-theme .status__counter, .page-theme h3, .manual-wrapper .manual-content h2 {
			color: #ca0202 !important;
		}
		.page-theme .primary {
			background-color: #ca0202 !important;
			border-color: #ca0202 !important;
		}
		.background-triangle-big, .background-triangle-small, .manual-wrapper .manual-nav .title span, .page-theme .v-card__title, .page-theme .blue.darken-3 {
			background-color: #ca0202 !important;
		}
		.background-triangle-big:before {
			border-top: 26px solid #ca0202;
		}
		.background-triangle-small:before {
			border-top: 19px solid #ca0202;
		}
		.page-theme .v-icon {
			color: #ca0202 !important;
		}
		.page-theme .primary .v-icon, .page-theme .blue.darken-3 .v-icon, .page-theme .background-triangle-small .v-icon {
			color: white !important;
		}
		.manual-wrapper .manual-nav .title span:before {
			border-top: 46px solid #ca0202;
		}
		.manual-wrapper .tocify li:hover, .manual-wrapper .tocify .active {
			background-color: #ca0202 !important;
		}
		
		body.page-theme .deactive__btn {
			background-color: #0d7535 !important;
		}
		
		
		
		
		
		
		
		
		
		
		
/*---------- Global ----------*/
html {
	overflow-y: auto;
}
body {
	font-family: 'Roboto', sans-serif;
	font-size: 14px;
	min-height: 100vh;
}
body ul {
	list-style: none;
	padding: 0;
}
body a, body a:hover, body a:focus {
	text-decoration: none;
	color: inherit;
}

.home-theme {
	background: url(/o/bo-quocphong-theme/images/main-bg.jpg) center center no-repeat;
	background-size: cover;
}
.home-theme #wrapper {
	min-height: 100vh;
}
.home-theme #wrapper {
	padding-top: 0;
}
.page-theme #wrapper {
	padding-left: 0;
	padding-right: 0;
}



/*---------- Header ----------*/
.home-theme #banner {
	background: url(/o/bo-quocphong-theme/images/bg-header-home.jpg) left center no-repeat;
}

.page-theme #banner {
	background: url(/o/bo-quocphong-theme/images/bg-header-page-1920.png) center center no-repeat;
}

.mBody #banner {
	background-size: cover;
	max-width: 100%;
	padding: 0;
}
.mBody #banner .logo-wrapper {
	padding: 10px 45px;
}
.signed-in .btns, .signed-out #app_login {
	display: none;
}

@media screen and (min-width: 1367px) {
	.page-theme #banner {
		background-image: url(/o/bo-quocphong-theme/images/bg-header-page-1920.png);
	}
}

@media screen and (max-width: 1366px) {
	.mBody #banner .logo-wrapper, .mBody .nav-wrapper {
		padding: 5px 15px !important;
	}
}



/*---------- Navbar ----------*/
.mBody .nav-wrapper {
	padding: 5px 45px;
	max-width: inherit;
	display: -webkit-box;
	display: flex;
	-webkit-justify-content: space-between;
	justify-content: space-between;
	position: relative;
	-webkit-box-shadow: 0px 3px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 3px 3px 0px rgba(0,0,0,0.2);
	z-index: 5;
}
.mBody #navigation .nav-toggle {
	display: none;
	width: 40px;
	text-align: center;
	line-height: 39px;
	border: 1px solid #ca0202;
	border-radius: 4px;
	color: #ca0202;
	font-size: 20px;
}
.mBody #navigation > ul {
	display: -webkit-box;
	display: flex;
	margin-bottom: 0;
}
.mBody #navigation li a {
	display: block;
	padding: 10px 15px;
	border-radius: 20px;
}
.mBody #navigation li.selected a, .mBody #navigation li:hover a {
	font-weight: bold;
	background-color: #ca0202;
	color: white;
}
.mBody #navigation .child-menu {
	display: none;
}
.mBody .btns a {
	display: inline-block;
	padding: 9px 15px;
	border: 1px solid #ca0202;
	color: #ca0202;
	border-radius: 20px;
	width: 145px;
	text-align: center;
}
.mBody .btns a:hover, .mBody .btns a:focus {
	color: white;
	background-color: #ca0202;
}
.mBody .btns a:first-child {
	margin-right: 10px;
}

@media screen and (max-width: 991px) {
	.mBody #navigation .nav-toggle {
		display: inline-block;
	}
	.mBody #navigation > ul {
		display: none;
		width: 100%;
		position: absolute;
		background-color: white;
		left: 0;
		top: 100%;
		border: 1px solid #ccc;
	}
	.mBody #navigation li a {
		border-radius: 0;
	}
}



/*---------- Footer ----------*/
.home-theme #footer {
	position: absolute;
	bottom: 0;
	width: 100%;
}

#footer {
	-webkit-justify-content: flex-start;
	justify-content: flex-start;
}
#footer {
	background-color: #ca0202;
	color: white;
	padding: 15px;
	display: -webkit-box;
	display: flex;
}
#footer p {
	margin-bottom: 0;
}
#footer p:nth-child(2) {
	margin: 0 60px;
}

@media screen and (max-width: 991px) {
	.home-theme #footer {
		position: relative;
	}
	#footer {
		display: block;
	}
	#footer p:nth-child(2) {
		margin: 10px 0;
	}
}
	</style>
	
	<script type="text/javascript">
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
</body>

</html>