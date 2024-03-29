<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cn.ssdut.omega.entity.*" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <title>Info-Omega</title>       
        <link rel="stylesheet" href="./css/base.css">
        <link rel="stylesheet" href="./css/iconfont.css">
        <link rel="stylesheet" href="./css/login-fluid.css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/effects/set2.css" rel="stylesheet" type="text/css">
        <link href="css/effects/normalize.css" rel="stylesheet" type="text/css">
        <link href="css/effects/component.css"  rel="stylesheet" type="text/css" >
        <script src="./js/jquery.js" type="text/javascript" ></script>
        <script src="./js/login.js" type="text/javascript" ></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/nav.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>
		<script src="js/effects/imagesloaded.js"  type="text/javascript"></script>
		<script src="js/effects/classie.js"  type="text/javascript"></script>
		<script src="js/effects/AnimOnScroll.js"  type="text/javascript"></script>
        <script src="js/effects/modernizr.custom.js"></script>
        <script src="js/html5shiv.js" type="text/javascript"></script>
        <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header role="header" >
    <div class="container"  >
        <!-- logo -->
        <h1 class="pos_fixed" >
            <a href="Shopping_List.jsp" title="Omega"><img src="images/logo1.png" width=70px height=50px title="avana LLC" alt="avana LLC"/></a>
            <span style="margin-left:20px;margin-top:100px;padding:10px">Wecome to Omega</span>
        </h1>
        <div style="position:absolute;font-size:15px;padding-top:0px;margin-left:720px">
         <form action="product.jsp">
        <input type="text" style="height:25px;float:left;"name="content">
       <input type="submit" style="background-color:gray;margin-left:10px;padding:4px" value="搜索">
        </form>
        </div>
        <div style="position:absolute;float:left;font-size:17px; margin-left:970px">
        <%
         String type=(String)session.getAttribute("type");
         User_Omega user=(User_Omega)session.getAttribute("user");
        if(type==null||type.length()==0){
        	%>
         <a  href="login.jsp">Login</a>|
        <a  href="register.jsp">Register</a>
        	<%
        }else if(user!=null) {%>
       <a href='<s:url action="logout"/>'>Logout</a>|
        <a href="cart.jsp">Cart</a>
        <% 
        }else{
        %>
        <a href='<s:url action="logout"/>'>Logout</a>|
        <a href="manage.jsp">Manage</a>
        <%} %>
        </div>
        <nav  class="navy">
                <ul>

                    <li class="active"><a href="Shopping_List.jsp">Home</a></li>

                    <li><a href="Recommend.jsp">Recommendation List</a></li>

                    <li><a href="Shop_List.jsp">Shop List</a></li>

                </ul>
            </nav>

        <!-- nav -->

    </div>

</header>

      <div class="log-content cl" style="height:100px">
                    <div class="wpl pos cl">
                        <div class="log-row-cx cl">
                            <div class="login_center">
                                  <%
        String test=(String)session.getAttribute("type");
      if(test!=null&&test.equals("user")){
    	  %>
    	               <form id="LoginForm" action="updateUser" method="post">
                                        <label class="login-icon pos">
                                            <img width="20px" style="position: absolute; top: 10px;" src="./images/login/account.png">
                                            <input style="position: absolute; top: 10px;" type="text" name="password" class="log-input login-name mls" placeholder="please input your password" >
                                        </label>
                                        <label class="login-icon pos">
                                            <img width="17px" style="position: absolute; top: 10px;" src="./images/login/password.png">
                                            <input  type="text" name="phone" style="position: absolute; top: 10px;" autocomplete="off" class="log-input login-pwd mls" placeholder="please input you phone">
                                        </label>
                                                                                <label class="login-icon pos">
                                            <img width="17px" style="position: absolute; top: 10px;" src="./images/login/password.png">
                                            <input  type="text" name="address" style="position: absolute; top: 10px;" autocomplete="off" class="log-input login-pwd mls" placeholder="please input you address">
                                        </label>
                                                                                <label class="login-icon pos">
                                            <img width="17px" style="position: absolute; top: 10px;" src="./images/login/password.png">
                                            <input  type="text" name="postCode" style="position: absolute; top: 10px;" autocomplete="off" class="log-input login-pwd mls" placeholder="please input you postCode">
                                        </label>
                                        <button type="submit" class="lang-btn lang-btn-huge mtw lang-btn-fixed-Large"  style="margin-top: 30px !important;">
                                            <span class="lang-btn-content">Change Info</span>
                                        </button>
                                </form>
    	  <%
      }else if (test!=null&&test.equals("manager")){
    	  %>
    	  
    	      	               <form id="LoginForm" action="updateManager" method="post">
                                        <label class="login-icon pos">
                                            <img width="20px" style="position: absolute; top: 10px;" src="./images/login/account.png">
                                            <input style="position: absolute; top: 10px;" type="text" name="password" class="log-input login-name mls" placeholder="please input your password" >
                                        </label>
                                        <label class="login-icon pos">
                                            <img width="17px" style="position: absolute; top: 10px;" src="./images/login/password.png">
                                            <input  type="text" name="phone" style="position: absolute; top: 10px;" autocomplete="off" class="log-input login-pwd mls" placeholder="please input you phone">
                                        </label>
                                                                                <label class="login-icon pos">
                                            <img width="17px" style="position: absolute; top: 10px;" src="./images/login/password.png">
                                            <input  type="text" name="name" style="position: absolute; top: 10px;" autocomplete="off" class="log-input login-pwd mls" placeholder="please input you name">
                                        </label>

                                        <button type="submit" class="lang-btn lang-btn-huge mtw lang-btn-fixed-Large"  style="margin-top: 30px !important;">
                                            <span class="lang-btn-content">Change Info</span>
                                        </button>
                                </form>
    	  <%
      }
      %>
                            </div>
                        </div>
                    </div>
                </div>
        <footer role="footer">
            <!-- nav -->

            <nav role="footer-nav">

            	<ul>

                	<li><a href="index.jsp" title="Work">Work</a></li>

                    <li><a href="about.jsp" title="About">About</a></li>

                    <li><a href="http://blog.csdn.net/dllgdxlxl" title="Blog">Blog</a></li>

                    <li><a href="http://www.ssdut.cn" title="Contact">Contact</a></li>

                </ul>

            </nav>

            <!-- nav -->

            <ul role="social-icons">

            	<li><a href="#" ><i class="fa fa-twitter" aria-hidden="true"  style="margin-top:10px"></i></a></li>

                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true" style="margin-top:10px"></i></a></li>

                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"  style="margin-top:10px"></i></a></li>

                <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"  style="margin-top:10px"></i></a></li>

            </ul>

            <p class="copy-right">&copy; 2017  Omega. All rights Resved.More Information <a href="http://www.ssdur.cn" target="_blank" title="ssdut">Java进修小分队</a>
 
        </footer>
</body>
</html>