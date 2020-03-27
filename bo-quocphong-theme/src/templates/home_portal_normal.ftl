<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Bộ Quốc phòng</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="stylesheet">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=12345" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=12345" rel="stylesheet" type="text/css">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/slick.min.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
</head>

<body class="${css_class} home-theme mBody">

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
		<header id="banner" class="container">
			<div class="logo-wrapper">
				<a href="/">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo-dvc.png">
				</a>		
				<div id="react-root" style="">
					<div id="app_login"></div>
				</div>
			</div>
			<div class="nav-wrapper">
				<#if has_navigation && is_setup_complete>
					<#include "${full_templates_path}/navigation.ftl" />
				</#if>
				<div class="btns">
					<a href="/web/bo-quoc-phong/register#/login-dichvucong" class="login"><i class="fa fa-user"></i> Đăng nhập</a>
					<a href="/web/bo-quoc-phong/register" class="register"><i class="fa fa-user-plus"></i> Đăng ký</a>
				</div>	
			</div>
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
			<p>Địa chỉ: Số 1B, Nguyễn Tri Phương, quận Ba Đình, thành phố Hà Nội</p>
			<p>Điện thoại: 069.553215</p>
			<p>Thư điện tử: info@mod.gov.vn</p>
		</footer>
	</div>
	
	<script type="text/javascript" src="https://vietopencps.github.io/frontend-opencps-v2.1/o/opencps-frontend-cli/login/app/js/app.js"></script>
	<script type="text/javascript" src="https://vietopencps.github.io/frontend-opencps-v2.1/o/opencps-frontend-cli/login/app/js/chunk-vendors.js"></script>

	<style>
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
			position: absolute;
			top: 0;
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
	background: url(/o/bo-quocphong-theme/images/bg-header-page-1366.jpg) center center no-repeat;
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
.page-theme .nav-wrapper {
	margin-top: 0;
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
	background-color: #6c000a;
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
	
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		});
	</script>

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
</body>

</html>