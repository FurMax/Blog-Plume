<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Responsive Multipurpose HTML5 Business Template">
        <meta name="author" content="Themesdesign">

        <link rel="shortcut icon" href="images/favicon.ico">

        <title>Plume - 个人博客&知识社区 - 登录页</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/bootstrap.min.css" rel="stylesheet">

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/materialdesignicons.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/fontawesome.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/pe-icon-7-stroke.css" rel="stylesheet">

        <!--Slider-->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template1/static/css/slick.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ui-template1/static/css/slick-theme.css"/>

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/style.css" rel="stylesheet">

    </head>

    <body>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="text-center"><img src="${pageContext.request.contextPath}/ui-template1/static/picture/blog-logo.png" width="100px" height="100px" alt=""> </div>
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>      

        <div class="back-to-home rounded d-none d-sm-block">
            <a href="mainPage.jsp" class="text-white rounded d-inline-block text-center"><i class="mdi mdi-home"></i></a>
        </div>

        <!-- Navigation Bar-->
        <section class="vh-100 d-flex align-items-center" style="background-image: url('${pageContext.request.contextPath}/img/loginBg1.jpg');">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="bg-white p-4 rounded box-shadow">
                            <div class="text-center mb-4">
                                <a href="${pageContext.request.contextPath}/user/toMain"><img src="${pageContext.request.contextPath}/ui-template1/static/picture/blog-logo.png" width="80px" height="80px" alt="logo"></a>
                            </div>
                            <form action="${pageContext.request.contextPath}/user/login" method="post">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Email :</label>
                                            <input type="email"  name="userEmail" class="form-control" placeholder="Email" name="email" required="">
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Password :</label>
                                            <input type="password" name="password" class="form-control" placeholder="Password" required="">
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">Remember me</label>
                                            <span id="tips" style="color: red">${Msg}</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 mt-3">
                                        <button class="btn btn-custom w-100" type="submit">登 录</button>
                                    </div>
                                    <div class="mx-auto">
                                        <p class="mb-0 mt-3"><a href="forgot-password.html" class="text-dark font-weight-bold">Forgot your password ?</a></p>
                                    </div>
                                    <div class="mx-auto">
                                        <p class="mb-0 mt-3"><small class="text-dark mr-2">Don't have an account ?</small> <a href="${pageContext.request.contextPath}/user/toregister" class="text-dark font-weight-bold">Sign Up</a></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div> 
                </div>
            </div>
        </section>
        <!-- HOME END--> 

        <!-- js placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/ui-template1/static/js/jquery-3.5.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/ui-template1/static/js/bootstrap.bundle.min.js"></script>
        <!-- Carousel -->
            <script src="${pageContext.request.contextPath}/ui-template1/static/js/slick.min.js"></script>
        <script src="${pageContext.request.contextPath}/ui-template1/static/js/slick.init.js"></script>
        <!--custom script-->
        <script src="${pageContext.request.contextPath}/ui-template1/static/js/app.js"></script>

    </body>

</html>