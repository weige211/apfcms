<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>APFCMS</title>

        <meta name="description" content="APFCMS">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="img/favicon.png">
        <link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="js/vendor/modernizr-3.3.1.min.js"></script>
    </head>
	<body>
	
	<!-- Full Background -->
        <!-- For best results use an image with a resolution of 1280x1280 pixels (prefer a blurred image for smaller file size) -->
        <img src="img/placeholders/layout/error_full_bg.jpg" alt="Full Background" class="full-bg full-bg-bottom animation-pulseSlow">
        <!-- END Full Background -->

        <!-- Error Container -->
        <div id="error-container">
            <div class="row text-center">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="text-light animation-fadeInQuick"><strong>丢失了</strong></h1>
                    <h2 class="text-muted animation-fadeInQuickInv"><em>对不起，您要的网页找不到了。。</em></h2>
                     <p><%
						Enumeration<String> attributeNames = request.getAttributeNames();
						while (attributeNames.hasMoreElements()) {
							String attributeName = attributeNames.nextElement();
							Object attribute = request.getAttribute(attributeName);
							out.println("request.attribute['" + attributeName + "'] = "
									+ attribute);
						}
					%></p>
                </div>
                <div class="col-md-4 col-md-offset-4">
                    <form action="page_ready_search_results.html" method="post" class="push">
                        <div class="input-group input-group-lg">
                            <input type="text" id="search-term" name="search-term" class="form-control" placeholder="搜索..">
                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-effect-ripple btn-primary"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                    <a href="page_ready_blank.html" class="btn btn-effect-ripple btn-default"><i class="fa fa-arrow-left"></i>返回</a>
                </div>
            </div>
        </div>
	</body>
</html><%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>APFCMS</title>

        <meta name="description" content="APFCMS">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="img/favicon.png">
        <link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="js/vendor/modernizr-3.3.1.min.js"></script>
    </head>
	<body>
	
	<!-- Full Background -->
        <!-- For best results use an image with a resolution of 1280x1280 pixels (prefer a blurred image for smaller file size) -->
        <img src="img/placeholders/layout/error_full_bg.jpg" alt="Full Background" class="full-bg full-bg-bottom animation-pulseSlow">
        <!-- END Full Background -->

        <!-- Error Container -->
        <div id="error-container">
            <div class="row text-center">
                <div class="col-md-6 col-md-offset-3">
                    <h1 class="text-light animation-fadeInQuick"><strong>丢失了</strong></h1>
                    <h2 class="text-muted animation-fadeInQuickInv"><em>对不起，您要的网页找不到了。。</em></h2>
                     <p><%
						Enumeration<String> attributeNames = request.getAttributeNames();
						while (attributeNames.hasMoreElements()) {
							String attributeName = attributeNames.nextElement();
							Object attribute = request.getAttribute(attributeName);
							out.println("request.attribute['" + attributeName + "'] = "
									+ attribute);
						}
					%></p>
                </div>
                <div class="col-md-4 col-md-offset-4">
                    <form action="page_ready_search_results.html" method="post" class="push">
                        <div class="input-group input-group-lg">
                            <input type="text" id="search-term" name="search-term" class="form-control" placeholder="搜索..">
                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-effect-ripple btn-primary"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                    <a href="page_ready_blank.html" class="btn btn-effect-ripple btn-default"><i class="fa fa-arrow-left"></i>返回</a>
                </div>
            </div>
        </div>
	</body>
</html>