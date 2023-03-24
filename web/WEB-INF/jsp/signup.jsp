<%--进度：完成登录注册及其基本的美化操作，但还有一些细节没有完善，比如验证码还没加入，比如勾选隐私条款那边得勾选才能登录，因此得弄alert弹窗！
之后计划：开始往主界面里填东西了。开始编写blogService、blogController类的代码--%>

<%--新表单验证器好像似乎没起到作用？似乎是导入的js、css包的版本问题，可能需要导入正确的bootstrap、jquery？

另外，还在插件库那边找到了个比较好的注册表单。可以将其js和css改好并且导入试试看。--%>

<%--明天计划还是应该去注意写博客jsp的编写，还有博客详情页面的编写。。--%>
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

        <title>Crezo - A Responsive Multipurpose HTML Template</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/materialdesignicons.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/ui-template1/static/css/style.css" rel="stylesheet">

<%--        <link href="${pageContext.request.contextPath}/signup-validator/css/style.css">--%>

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
        <section class="vh-100 d-flex align-items-center" style="background-image: url('${pageContext.request.contextPath}/ui-template1/static/images/bg-login.jpg');">
            <div class="bg-overlay"></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="bg-white p-4 rounded box-shadow">
                            <div class="text-center">
                                <h4><a href="mainPage.jsp"><img src="${pageContext.request.contextPath}/ui-template1/static/picture/blog-logo.png" width="80px" height="80px" alt="logo"></a></h4>
                            </div>
                            <form class="login-form" action="${pageContext.request.contextPath}/user/register">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="">First name :</label>
                                            <input type="text" name="userName" class="form-control" id="na" placeholder="First Name" name="s" required="">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="">Email :</label>
                                            <input type="email" name="userEmail" class="form-control" placeholder="Email" name="email" required="">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="">Password :</label>
                                            <input type="password" name = "password1" id="password1" class="form-control" placeholder="Password" required="">
                                        </div>
                                    </div>
<%--                                    <p>6~16个字符，区分大小写</p><span id="ruo">弱</span><span id="zo" >中</span><span id="qiang" >强</span><br>--%>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="">Confirm Password :</label>
                                            <input type="password" name="password2" id="password2" class="form-control" placeholder="Confirm Password" required="">
<%--                                           此处之后可以换成弹窗alert以美化登录注册效果！--%>
                                            <span style="color: red">${errorMsg}</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">I Accept <a href="#">Terms And Condition</a></label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 mt-4 mb-3">
                                        <button class="btn btn-custom w-100" type="submit">Register</button>
                                    </div>
                                    <div class="mx-auto">
                                        <p class="mb-0 mt-2"><small class="text-dark mr-2">Already have an account ?</small> <a href="${pageContext.request.contextPath}/user/toLogin" class="text-dark font-weight-bold">Sign in</a></p>
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
        <!--custom script-->
        <script src="${pageContext.request.contextPath}/ui-template1/static/js/app.js"></script>

<%--        <script src="${pageContext.request.contextPath}/signup-validator/js/index.js"></script>--%>
<%--        <script src="${pageContext.request.contextPath}/signup-validator/js/slide.js"></script>--%>

    </body>

</html>