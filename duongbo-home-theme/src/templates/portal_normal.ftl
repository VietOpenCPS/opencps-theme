<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Dịch vụ công trực tuyến Bộ Giao thông Vận tải</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&amp;subset=vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<a class="mLogo" href="${site_default_url}"/>
			<img src="${themeDisplay.getPathThemeRoot()}/images/logo.png" class="img-responsive center-block">
		</a>
	</header>
	<p style="
		text-align: center;
		margin-top: 15px;
		font-size: 16px;
		color: white;
	">Các thủ tục hành chính đang được cung cấp ở mức độ 4</p>
	<section id="content">
		<@liferay_portlet["runtime"]
              defaultPreferences="${freeMarkerPortletPreferences}"
              portletProviderAction=portletProviderAction.VIEW
              instanceId="FrontendWebPortal_LoginPortlet_1"
              portletName="FrontendWebPortal_LoginPortlet"/>
	</section>

	<footer id="footer" role="contentinfo">
		<div class="container">
			<div class="sitename">Tổng cục Đường bộ Việt Nam - Bộ Giao thông Vận tải</div>
			<div class="address">
				<i class="fa fa-map-marker" aria-hidden="true"></i> 
				<span>D20 Tôn Thất Thuyết, KDT mới Cầu Giấy, Hà Nội</span>
			</div>
			<div class="phone">
				<i class="fa fa-phone" aria-hidden="true"></i> 
				<span>1900 0318</span>
			</div>
			<div class="mail">
				<i class="fa fa-envelope" aria-hidden="true"></i>
				<span>bophanhotro@mt.gov.vn</span>
			</div>
			<a href="/web/guest/huong-dan-cong-xu-ly" class="manual">Hướng dẫn sử dụng</a>
		</div>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>