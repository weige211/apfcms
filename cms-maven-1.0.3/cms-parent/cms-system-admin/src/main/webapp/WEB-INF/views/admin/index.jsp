
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.hic.model.Sys_User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
HttpSession s = request.getSession(); 
Sys_User user=(Sys_User)s.getAttribute("user");
String username=user.getUsername();
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
        <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="<%=basePath%>css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="<%=basePath%>css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="<%=basePath%>css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="<%=basePath%>js/vendor/modernizr-3.3.1.min.js"></script>
    </head>

	<body>
	
	  <!-- Page Wrapper -->
        <!-- In the PHP version you can set the following options from inc/config file -->
        <!--
            Available classes:

            'page-loading'      enables page preloader
        -->
        <div id="page-wrapper" class="page-loading">
        	
            <!-- Preloader -->
            <!-- Preloader functionality (initialized in js/app.js) - pageLoading() -->
            <!-- Used only if page preloader enabled from inc/config (PHP version) or the class 'page-loading' is added in #page-wrapper element (HTML version) -->
            <div class="preloader">
                <div class="inner">
                    <!-- Animation spinner for all modern browsers -->
                    <div class="preloader-spinner themed-background hidden-lt-ie10"></div>

                    <!-- Text for IE9 -->
                    <h3 class="text-primary visible-lt-ie10"><strong>加载中..</strong></h3>
                </div>
            </div>
            <!-- END Preloader -->

            <!-- Page Container -->
            <!-- In the PHP version you can set the following options from inc/config file -->
            <!--
                Available #page-container classes:

                'sidebar-light'                                 for a light main sidebar (You can add it along with any other class)

                'sidebar-visible-lg-mini'                       main sidebar condensed - Mini Navigation (> 991px)
                'sidebar-visible-lg-full'                       main sidebar full - Full Navigation (> 991px)

                'sidebar-alt-visible-lg'                        alternative sidebar visible by default (> 991px) (You can add it along with any other class)

                'header-fixed-top'                              has to be added only if the class 'navbar-fixed-top' was added on header.navbar
                'header-fixed-bottom'                           has to be added only if the class 'navbar-fixed-bottom' was added on header.navbar

                'fixed-width'                                   for a fixed width layout (can only be used with a static header/main sidebar layout)

                'enable-cookies'                                enables cookies for remembering active color theme when changed from the sidebar links (You can add it along with any other class)
            -->
            <div id="page-container" class="header-fixed-top sidebar-visible-lg-full">
                <!-- Alternative Sidebar -->
                <div id="sidebar-alt" tabindex="-1" aria-hidden="true">
                    <!-- Toggle Alternative Sidebar Button (visible only in static layout) -->
                    <a href="javascript:void(0)" id="sidebar-alt-close" onclick="App.sidebar('toggle-sidebar-alt');"><i class="fa fa-times"></i></a>

                    <!-- Wrapper for scrolling functionality -->
                    <div id="sidebar-scroll-alt">
                        <!-- Sidebar Content -->
                        <div class="sidebar-content">
                            <!-- Profile -->
                            <div class="sidebar-section">
                                <h2 class="text-light">个人信息</h2>
                            </div>
                            <!-- END Profile -->

                            <!-- Settings -->
                           
                            <!-- END Settings -->
                        </div>
                        <!-- END Sidebar Content -->
                    </div>
                    <!-- END Wrapper for scrolling functionality -->
                </div>
                <!-- END Alternative Sidebar -->

                <!-- Main Sidebar -->
                <div id="sidebar">
                    <!-- Sidebar Brand -->
                    <div id="sidebar-brand" class="themed-background">
                        <a href="<%=basePath%>admin" class="sidebar-title">
                            <i class="fa fa-cube"></i> <span class="sidebar-nav-mini-hide">APF<strong>CMS</strong></span>
                        </a>
                    </div>
                    <!-- END Sidebar Brand -->

                    <!-- Wrapper for scrolling functionality -->
                    <div id="sidebar-scroll">
                        <!-- Sidebar Content -->
                        <div class="sidebar-content">
                            <!-- Sidebar Navigation -->
                            <ul class="sidebar-nav">
                                <li>
                                    <a  class="active"  href="<%=basePath%>admin"><i class="gi gi-compass sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">仪表盘</span></a>
                                </li>
                                <li class="sidebar-separator">
                                    <i class="fa fa-ellipsis-h"></i>
                                </li>
                                <li>
                                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="fa fa-file-text-o sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">文章</span></a>
                                    <ul>
                                        <li>
                                            <a href="<%=basePath%>admin/article/add">撰写文章</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>admin/article/articles">所有文章</a>
                                        </li>
                                        <li>
                                        	<a href="<%=basePath%>admin/category/categorys">文章类别</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-settings sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">系统设置</span></a>
                                    <ul>
                                        <li>
                                            <a href="<%=basePath%>admin/menu/menus">菜单管理</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>admin/user/users">用户管理</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>admin/role/roles">角色管理</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-cardio sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">数据统计</span></a>
                                    <ul>
                                        <li>
                                            <a href="<%=basePath%>admin">来访统计</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>admin/article/articles">文章统计</a>
                                        </li>
                                    </ul>
                                </li>
                                
                            </ul>
                            <!-- END Sidebar Navigation -->

                            <!-- Color Themes -->
                            <!-- Preview a theme on a page functionality can be found in js/app.js - colorThemePreview() -->
                            <div class="sidebar-section sidebar-nav-mini-hide">
                                <div class="sidebar-separator push">
                                    <i class="fa fa-ellipsis-h"></i>
                                </div>
                                <ul class="sidebar-themes clearfix">
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-default" data-toggle="tooltip" title="Default" data-theme="default" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-default"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-classy" data-toggle="tooltip" title="Classy" data-theme="css/themes/classy.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-classy"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-social" data-toggle="tooltip" title="Social" data-theme="css/themes/social.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-social"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-flat" data-toggle="tooltip" title="Flat" data-theme="css/themes/flat.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-flat"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-amethyst" data-toggle="tooltip" title="Amethyst" data-theme="css/themes/amethyst.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-amethyst"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-creme" data-toggle="tooltip" title="Creme" data-theme="css/themes/creme.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-creme"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-passion" data-toggle="tooltip" title="Passion" data-theme="css/themes/passion.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
                                            <span class="section-side themed-background-dark-passion"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-default" data-toggle="tooltip" title="Default + Light Sidebar" data-theme="default" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-classy" data-toggle="tooltip" title="Classy + Light Sidebar" data-theme="css/themes/classy.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-social" data-toggle="tooltip" title="Social + Light Sidebar" data-theme="css/themes/social.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-flat" data-toggle="tooltip" title="Flat + Light Sidebar" data-theme="css/themes/flat.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-amethyst" data-toggle="tooltip" title="Amethyst + Light Sidebar" data-theme="css/themes/amethyst.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-creme" data-toggle="tooltip" title="Creme + Light Sidebar" data-theme="css/themes/creme.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-passion" data-toggle="tooltip" title="Passion + Light Sidebar" data-theme="css/themes/passion.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
                                            <span class="section-side"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-default" data-toggle="tooltip" title="Default + Light Header" data-theme="default" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-default"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-classy" data-toggle="tooltip" title="Classy + Light Header" data-theme="css/themes/classy.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-classy"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-social" data-toggle="tooltip" title="Social + Light Header" data-theme="css/themes/social.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-social"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-flat" data-toggle="tooltip" title="Flat + Light Header" data-theme="css/themes/flat.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-flat"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-amethyst" data-toggle="tooltip" title="Amethyst + Light Header" data-theme="css/themes/amethyst.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-amethyst"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-creme" data-toggle="tooltip" title="Creme + Light Header" data-theme="css/themes/creme.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-creme"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="themed-background-passion" data-toggle="tooltip" title="Passion + Light Header" data-theme="css/themes/passion.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
                                            <span class="section-header"></span>
                                            <span class="section-side themed-background-dark-passion"></span>
                                            <span class="section-content"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- END Color Themes -->
                        </div>
                        <!-- END Sidebar Content -->
                    </div>
                    <!-- END Wrapper for scrolling functionality -->

                </div>
                <!-- END Main Sidebar -->

                <!-- Main Container -->
                <div id="main-container">
                    <!-- Header -->
                    <!-- In the PHP version you can set the following options from inc/config file -->
                    <!--
                        Available header.navbar classes:

                        'navbar-default'            for the default light header
                        'navbar-inverse'            for an alternative dark header

                        'navbar-fixed-top'          for a top fixed header (fixed main sidebar with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar())
                            'header-fixed-top'      has to be added on #page-container only if the class 'navbar-fixed-top' was added

                        'navbar-fixed-bottom'       for a bottom fixed header (fixed main sidebar with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar()))
                            'header-fixed-bottom'   has to be added on #page-container only if the class 'navbar-fixed-bottom' was added
                    -->
                    <header class="navbar navbar-inverse navbar-fixed-top">
                        <!-- Left Header Navigation -->
                        <ul class="nav navbar-nav-custom">
                            <!-- Main Sidebar Toggle Button -->
                            <li>
                                <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
                                    <i class="fa fa-ellipsis-v fa-fw animation-fadeInRight" id="sidebar-toggle-mini"></i>
                                    <i class="fa fa-bars fa-fw animation-fadeInRight" id="sidebar-toggle-full"></i>
                                </a>
                            </li>
                            <!-- END Main Sidebar Toggle Button -->

                            <!-- Header Link -->
                            <!--<li class="hidden-xs animation-fadeInQuick">
                                <a href=""><strong>欢迎</strong></a>
                            </li>-->
                            <!-- END Header Link -->
                        </ul>
                        <!-- END Left Header Navigation -->

                        <!-- Right Header Navigation -->
                        <ul class="nav navbar-nav-custom pull-right">
                            <!-- Search Form -->
                           
                            <!-- END Search Form -->

                            <!-- END Alternative Sidebar Toggle Button -->

                            <!-- User Dropdown -->
                            <li class="dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="<%=basePath%>img/placeholders/avatars/avatar9.jpg" alt="avatar">
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-header">
                                        <strong><%=username%></strong>
                                    </li>
                                    <li>
                                        <a href="<%=basePath%>admin/article/articles">
                                            <i class="fa fa-file-text-o fa-fw pull-right"></i>
                                                                                                               所有文章
                                        </a>
                                    </li>
                                    <li class="divider"><li>
                                    <li>
                                        <a href="<%=basePath%>admin/user/signout">
                                            <i class="fa fa-power-off fa-fw pull-right"></i>
                                                                                                                   退出
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END User Dropdown -->
                        </ul>
                        <!-- END Right Header Navigation -->
                    </header>
                    <!-- END Header -->
                    
                    
                     <!-- Page content -->
                    <div id="page-content">
                    	
                        <!-- First Row -->
                        <div class="row">
                            <!-- Simple Stats Widgets -->
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget">
                                    <div class="widget-content widget-content-mini text-right clearfix">
                                        <div class="widget-icon pull-left themed-background">
                                            <i class="gi gi-cardio text-light-op"></i>
                                        </div>
                                        <h2 class="widget-heading h3">
                                            <strong><span data-toggle="counter" data-to="2835"></span></strong>
                                        </h2>
                                        <span class="text-muted">网站访问量</span>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget">
                                    <div class="widget-content widget-content-mini text-right clearfix">
                                        <div class="widget-icon pull-left themed-background-success">
                                            <i class="gi gi-user text-light-op"></i>
                                        </div>
                                        <h2 class="widget-heading h3 text-success">
                                            <strong>+ <span data-toggle="counter" data-to="2862"></span></strong>
                                        </h2>
                                        <span class="text-muted">注册用户数</span>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget">
                                    <div class="widget-content widget-content-mini text-right clearfix">
                                        <div class="widget-icon pull-left themed-background-warning">
                                            <i class="gi gi-circle_ok text-light-op"></i>
                                        </div>
                                        <h2 class="widget-heading h3 text-warning">
                                            <strong>+ <span data-toggle="counter" data-to="75"></span></strong>
                                        </h2>
                                        <span class="text-muted">已发布文章数量</span>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget">
                                    <div class="widget-content widget-content-mini text-right clearfix">
                                        <div class="widget-icon pull-left themed-background-danger">
                                            <i class="gi gi-circle_exclamation_mark text-light-op"></i>
                                        </div>
                                        <h2 class="widget-heading h3 text-danger">
                                            <strong>+<span data-toggle="counter" data-to="5820"></span></strong>
                                        </h2>
                                        <span class="text-muted">未审核文章数量</span>
                                    </div>
                                </a>
                            </div>
                            <!-- END Simple Stats Widgets -->
                        </div>
                        <!-- END First Row -->

                        <!-- Second Row -->
                        <div class="row">
                            <div class="col-sm-6 col-lg-12">
                                <!-- Chart Widget -->
                                <div class="widget">
                                    <div class="widget-content border-bottom">
                                        <span class="pull-right text-muted">2017</span>
                                                                                                 最近一年的数据
                                    </div>
                                    <div class="widget-content border-bottom themed-background-muted">
                                        <!-- Flot Charts (initialized in js/pages/readyDashboard.js), for more examples you can check out http://www.flotcharts.org/ -->
                                        <div id="chart-classic-dash" style="height: 393px;"></div>
                                    </div>
                                    <div class="widget-content widget-content-full">
                                        <div class="row text-center">
                                            <div class="col-xs-4 push-inner-top-bottom border-right">
                                                <h3 class="widget-heading"><i class="gi gi-circle_ok text-dark push-bit"></i> <br><small>2888</small></h3>
                                            </div>
                                            <div class="col-xs-4 push-inner-top-bottom">
                                                <h3 class="widget-heading"><i class="gi gi-cardio text-dark push-bit"></i> <br><small>1722</small></h3>
                                            </div>
                                            <div class="col-xs-4 push-inner-top-bottom border-left">
                                                <h3 class="widget-heading"><i class="gi gi-user text-dark push-bit"></i> <br><small>1128</small></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END Chart Widget -->
                            </div>
                        </div>
                        <!-- END Second Row -->
                    </div>
                    <!-- END Page Content -->

                </div>
                <!-- END Main Container -->
            </div>
            <!-- END Page Container -->
        </div>
        <!-- END Page Wrapper -->

        <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
        <script src="<%=basePath%>js/vendor/jquery-2.2.4.min.js"></script>
        <script src="<%=basePath%>js/vendor/bootstrap.min.js"></script>
        <script src="<%=basePath%>js/plugins.js"></script>
        <script src="<%=basePath%>js/app.js"></script>

          <!-- Load and execute javascript code used only in this page -->
        <script src="js/pages/readyDashboard.js"></script>
        <script>$(function(){ ReadyDashboard.init(); });</script>
	</body>
</html>
