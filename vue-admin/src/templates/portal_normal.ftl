<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Hệ thống Dịch vụ công trực tuyến và một cửa điện tử</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<base href="/">
	<link href="/o/vue-admin/images/favicon.ico" rel="Shortcut Icon">
	
	<@liferay_util["include"] page=top_head_include />
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Material+Icons&amp;subset=vietnamese" rel="stylesheet">
	
	<link href="/o/vue-admin/css/roboto-fontface.css" rel="stylesheet" type="text/css">
	<link href="/o/vue-admin/css/trumbowyg.css?t=123123123" rel="stylesheet" type="text/css">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
    
	<script src="/o/vue-admin/js/jquery.min.js?t=123"></script>
	<script src="/o/vue-admin/js/trumbowyg.min.js?t=123"></script>
	<script src="/o/vue-admin/js/vue-trumbowyg.js?t=123"></script>
    <script src="/o/vue-admin/js/jquery.jexcel.js"></script>
    <script src="/o/vue-admin/js/svg-pan-zoom.min.js"></script>
	<script src="/o/vue-admin/js/bootstrap.min.js"></script>
	<script src="/o/vue-admin/js/handlebars.min.js"></script>
	<script src="/o/vue-admin/js/alpaca.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
	<script src="/o/vue-admin/js/bootstrap-datetimepicker.min.js"></script>
	<script src="/o/vue-admin/js/date-time-picker.js?t=8888"></script>
    
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
</head>

<body>
	
	<@liferay_util["include"] page=content_include />
	
	<style>
		#theGraph {
			min-height: 500px !important;
		}
	</style>
</body>

<script type="text/javascript">
	    $.ajaxSetup({
			headers: {
				"Token": Liferay.authToken,
				"groupId": themeDisplay.getScopeGroupId()
			},
			global: true
		});
</script>

</html>
