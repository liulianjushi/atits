<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>综合试验站详情</title>

	<meta name="description"
		  content="Draggabble Widget Boxes &amp; Containers" />
	<meta name="viewport"
		  content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->
	<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />

	<!-- text fonts -->
	<link rel="stylesheet" href="assets/css/ace-fonts.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
	<![endif]-->
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="assets/js/ace-extra.min.js"></script>
	<link href="assets/summernote/summernote.min.css" rel="stylesheet">
	<script src="assets/js/jquery-2.2.4.min.js"></script>
	<script src="assets/summernote/summernote.min.js"></script>
	<script src="assets/js/form-text-editor.js"></script>

	<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="no-skin">
<div class="main-container" id="main-container">
	<script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
	</script>

	<div class="main-content">
		<div class="page-content">

			<div class="page-content-area">
				<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<c:choose>
						<c:when test="${person.permission == 3}">
							<li><i class="ace-icon fa fa-home home-icon"></i> <a href="sys_index?sysId=${person.system.id}">首页</a>
							</li>
							<li><a href="sys_sta?sysId=${person.system.id}">综合试验站</a></li>
							<li class="active">基本内容</li>
						</c:when>
						<c:otherwise>
							<li><i class="ace-icon fa fa-home home-icon"></i> <a href="index">首页</a>
							</li>
							<li><a href="station">综合试验站</a></li>
							<li class="active">基本内容</li>
						</c:otherwise>
					</c:choose>

				</ul></div>
				<!-- /.page-header -->

				<div class="page-content-area">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<!-- #section:pages/error -->
							<div class="error-container">
								<div class="well">
									<c:choose>
										<c:when test="${person.permission ==1 || person.permission ==2
											&& person.system.id==station.system.id
											|| person.permission == 3 && person.station.id == station.id}">
											<ul class="pager">
												<li class="previous bigger-120">
													<a href="javascript:history.back()"><i class="ace-icon fa fa-arrow-left"></i> 返回</a>
												</li>

												<li class="next bigger-120">
													<a href="station_setting?id=${station.id}"><i class="ace-icon fa fa-pencil"></i> 修改</a>
												</li>
											</ul>
										</c:when>
										<c:otherwise>
											<ul class="pager">
												<li class="previous bigger-120">
													<a href="javascript:history.back()"><i class="ace-icon fa fa-arrow-left"></i> 返回</a>
												</li>
											</ul>
										</c:otherwise>
									</c:choose>
									<div class="col-md-11"  style="float: none;display: block;margin-left: auto;margin-right: auto;">
										<h1 class="header smaller lighter blue">
											${station.staName}

										</h1>


										<!--<div class="space"></div>-->

										<div>
											<h3 class="lighter smaller">基本内容展示:</h3>

											<ul class="list-unstyled spaced inline bigger-150 margin-20">

												<li><i class="ace-icon fa fa-hand-o-right blue"></i> <font
														color="#0088CC"> 建设依托单位：</font></li>
												<div style="display: block; padding-left: 2em;">${station.company}</div>

												<li><i class="ace-icon fa fa-hand-o-right blue"></i> <font
														color="#0088CC"> 所属体系：</font></li>
												<div id="demo-summernote-edit"
													 style="display: block; padding-left: 2em;">
													${station.system.sysName}</div>

												<li><i class="ace-icon fa fa-hand-o-right blue"></i> <font
														color="#0088CC"> 综合试验站站长：</font></li>
												<div id="demo-summernote-edit"
													 style="display: block; padding-left: 2em;">
													${station.manager}</div>

												<li><i class="ace-icon fa fa-hand-o-right blue"></i><font
														color="#0088CC"> 基本信息：</font></li>
												<div id="demo-summernote-edit"
													 style="display: block; padding-left: 2em;">
													<p style="text-indent: 2em;">${station.content}</p>
												</div>

											</ul>
											<!--Summernote-->
											<!--===================================================-->


											<!--===================================================-->
											<hr>
											<hr>





										</div>
									</div>
								</div>

							</div>

						</div>
					</div>

					<!-- /section:pages/error -->

					<!-- PAGE CONTENT ENDS -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- /.page-content-area -->
</div>
<!-- /.page-content -->
</div>
<!-- /.main-content -->

<div class="footer">
	<div class="footer-inner">
		<!-- #section:basics/footer -->
		<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字研究所</span>
					&copy; 2017-2018（测试版）
				</span>
		</div>

		<!-- /section:basics/footer -->
	</div>
</div>

<a href="#" id="btn-scroll-up"
   class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>
</div>
<!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery
    || document.write("<script src='assets/js/jquery.min.js'>"
        + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
	window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>



<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css" />

<script type="text/javascript">
    ace.vars['base'] = '..';
</script>
<script src="assets/js/ace/elements.onpage-help.js"></script>
<script src="assets/js/ace/ace.onpage-help.js"></script>
<script src="docs/assets/js/rainbow.js"></script>
<script src="docs/assets/js/language/generic.js"></script>
<script src="docs/assets/js/language/html.js"></script>
<script src="docs/assets/js/language/css.js"></script>
<script src="docs/assets/js/language/javascript.js"></script>
</body>

</html>