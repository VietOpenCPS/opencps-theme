<!DOCTYPE html>

<#include init />

<html dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Hệ thống dịch vụ hành chính công trực tuyến</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<base href="/">

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}css/app.51fb88889af6c73cba7a2457859153eb.css" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}css/base-style.css?t=123132211" rel="stylesheet">

</head>

<body class="mBody">
	<header id="banner">
		<div class="container-fluid align-center">
			<div class="logo align-middle">
				<a href="$site_default_url">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo_hanghai.png">
				</a>
			</div>
			
			<#if !themeDisplay.isSignedIn()>
				<div class="sub-info">
					<a href="/login" class="signin">Đăng nhập</a>
					<a href="/register" class="register">Đăng ký</a>			
				</div>
			<#else>
				<div class="actions-group">
					<span id="quanTriPageHeader"></span>
					<a href="/group/guest/doipass" class="username" style="margin-right: 15px;"><i class="fa fa-user-circle"></i> <span id="emailNameHeader"></span></a>
					<a href="/c/portal/logout" class="signout"><i class="fa fa-sign-out"></i> Thoát</a>
				</div>
			</#if>
		</div>
		
		<#include "${full_templates_path}/navigation.ftl" />
	</header>

	<#if selectable>
        ${theme.include(content_include)}
    <#else>
        ${portletDisplay.recycle()}

        ${portletDisplay.setTitle(the_title)}

        ${theme.wrapPortlet("portlet.ftl", content_include)}
    </#if>
	<div id="app"></div>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/vgcaplugin.js"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/manifest.9612b955abb3b0cb324d.js"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/vendor.bc2132d7c2eee437576d.js"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/app.dfbc729a9abae1754165.js"></script>
	
	<footer id="footer"> 
		<div class="owner">
			<ul>
				<li>Cục Hàng Hải Việt Nam - Bộ Giao Thông vận tải</li>
				<li><i class="fa fa-map-marker" aria-hidden="true"></i> 8 Phạm Hùng, Mai Dịch, Cầu Giấy, Hà Nội</li>
				<li></i> (024) 3768 3065</li>
				<li>
					<a href="/web/guest/huong-dan-su-dung" class="manual">Hướng dẫn sử dụng</a>
				</li>
			</ul>
		</div>
	</footer>
</div>
</body>

</html>
