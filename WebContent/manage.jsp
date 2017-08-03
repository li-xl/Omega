<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.ssdut.omega.entity.*" %>
<%@ page import="java.util.*" %>
<%@ page import="cn.ssdut.omega.management.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shop-Management</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <meta charset="utf-8">

    <!-- Description, Keywords and Author -->

    <meta name="description" content="">

    <meta name="author" content="">

    <style type="text/css">
        .pos_input{position:absolute;left:800px;top:80px}
        .pos_search{position:absolute;left:1130px;top:80px}
        .kuan input{ width:330px; height:35px; background:white no-repeat; border:none; float:left }
        .an input{ width:120px; height:35px;  background:black no-repeat; color:white; border:none;  float:left}

        #me_list{
            padding-top:80px;
            padding-bottom:39px;
        }

        #me_list li{
            display: inline;
            font-weight:800;
            font-size:42px;
            margin: 70px;
        }

        #me_list li a{
            display: inline;
            line-height:72px;
            color:#404040;
            /*margin: 50px;*/
        }

        #me_list li.nav-active a{
            text-decoration:none;
            color:#fb5353;
        }


        .dropdown-content a {
            color: black;
            padding: 16px 24px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #f1f1f1}

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background: none;
        }


        h1.pos_fixed
        {
            position:relative;
            /*width: 50%;
            height: 50%;*/
            top:60px;
            left:40px;
        }

        div.pos_fixed_d{
            position:relative;
            width: 40%;
            height: 40%;
            top:65px;
            left:700px;
            /*float: right;*/
        }

         .div{
             /*padding-top: 20px;
             opacity: 0.2;*/
             /*width: 40%;
             height: 40%;*/
             /*float: right;*/
             left: 10px;
             position: relative;
             padding-top: 20px;
         }

    </style>

    <link rel="shortcut icon" href="images/logo1.png" width=70px height=50px type="image/x-icon">

    <!-- 搜索框 -->
    <link rel="stylesheet" href="http://s4.ui.cn/fonts/iconfont.css?v=1500208402">
    <%--<link rel="stylesheet" href="http://s4.ui.cn/css/all/uicn.v1.css?v=1500208402">--%>
    <%--<link rel="stylesheet" href="http://s4.ui.cn/css/all/footer.v1.css?v=1500208402">--%>
    <link rel="stylesheet" href="http://s4.ui.cn/css/all/nivo-slider.css?v=1500208402">
    <link rel="stylesheet" href="http://s4.ui.cn/css/all/modal.css?v=1500208402">
    <link rel="stylesheet" href="http://s4.ui.cn/css/all/post.css?v=1500208402">

    <link href="css/header.v1.css" rel="stylesheet" type="text/css"/>



    <!-- style -->

    <link href="css/style_code9.css" rel="stylesheet" type="text/css">

    <!-- style -->

    <!-- bootstrap -->

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- responsive -->

    <link href="css/responsive.css" rel="stylesheet" type="text/css">

    <!-- font-awesome -->

    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- font-awesome -->

    <link href="css/effects/set2.css" rel="stylesheet" type="text/css">

    <link href="css/effects/normalize.css" rel="stylesheet" type="text/css">

    <link href="css/effects/component.css"  rel="stylesheet" type="text/css" >



    <!-- JS -->
    <script src="http://s3.ui.cn/js/jquery.js?v=1500208402"></script>
    <script src="http://s3.ui.cn/js/msgTip.js?v=1500208402"></script>
    <script src="http://s3.ui.cn/js/home/header.v1.js?v=1500208402"></script>
    <script src="http://s3.ui.cn/js/home/home.v1.js?v=1500208402"></script>
    <script src="http://s3.ui.cn/js/home/works.js?v=1500208402"></script>

    <script src="http://s3.ui.cn/js/home/footer.v1.js?v=1500208402"></script>
    <script src="http://s3.ui.cn/js/home/post.js?v=1500208402"></script>

    <script src="http://s3.ui.cn/js/LazyLoad.js?v=1500208402"></script>
    <script src="http://s3.ui.cn/js/contentover.js?v=1500208402"></script>
    <script src="/Public/js/cnzz.js?v=1500208402"></script>

</head>
<body>
<header role="header">
    <div class="container">
        <h1 class="pos_fixed">
            <a href="main.jsp" title="Omega"><img src="images/logo1.png" width=70px height=50px title="Omega" alt="Omega"/></a>
        </h1>
       <div style="position:absolute;font-size:15px;padding-top:0px;margin-left:720px;margin-top:85px">
         <form action="GoodsList.jsp">
        <input type="text" style="height:25px;float:left;"name="content">
       <input type="submit" style="background-color:gray;margin-left:10px;padding:4px" value="搜索">
        </form>
        </div>
        <div style="position:absolute;float:left;margin-top:85px;font-size:17px; margin-left:970px">
        <%
         String type=(String)session.getAttribute("type");
        if(type==null||type.length()==0){
        	%>
         <a  href="login.jsp">Login</a>|
        <a  href="register.jsp">Register</a>
        	<%
        }else{%>
       <a href='<s:url action="logout"/>'>Logout</a>|
        <a href="information.jsp">Info</a>
        <% 
        }
        %>
        </div>
        <div id="me_list">
            <nav  class="navy">
                <ul>
                    <li><a href="main.jsp">Home</a></li>
                    <li><a href="recommend.jsp">Recommendation List</a></li>
                    <li ><a href="GoodsList.jsp">Good List</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<div style="padding-left:50px;font-size:17px;background-color:	#FCFCFC	">
<%
  Manager_Omega manager =(Manager_Omega) session.getAttribute("manager");
  if(manager!=null){
	ShopManagement_Omega management = new ShopManagement_Omega();
	List<Shop_Omega> shops = management.findShopByManagerId(manager.getId());
%>
<h3 style="padding:10px">你好，<%=manager.getAccount()%></h3>
<br/>
店铺管理
<div>
<ul>
<% 
 for(Shop_Omega shop:shops){
	 %>
	 <li>
	<h4> 店铺名字：<%=shop.getName()%><br/>
	 店铺描述：<%=shop.getDescription() %><br/></h4>
	商品：
	<ul style="margin-left:40px">
	 <% 
	 ProductManagement_Omega p_manage = new ProductManagement_Omega();
	 List<Product_Omega> products = p_manage.findProductByShopId(shop.getId());
	 for(Product_Omega product:products){
	 %>
	 <li>
	 <form action="updateProduct" method="post" enctype="multipart/form-data">
	 <input type="hidden" value="<%=shop.getId()%>">
	  商品名字：<input type="text" name="name" value="<%=product.getName()%>"><br/>
	  商品描述：<input type="text" name="description" value="<%=product.getDescription()%>"><br/>
	   商品价格：<input type="text" name="price" value="<%=product.getPrice()%>"><br/>
	   商品数量：<input type="text" name="num" value="<%=product.getNum()%>"><br/>
	   商品种类：<input type="text" name="type" value="<%=product.getType()%>"><br/>
	  商品图片：<input type="file" name="file" >
	<button type="submit" value="修改" >修改</button>
	<input type="hidden" name="id" value="<%=product.getId()%>">
	<button formaction="deleteProduct" >删除商品</button>
	 </form>
	 <br/>
	 </li>
	 <%} %>
	</ul>
添加商品
<form action="addProduct" method="post" enctype="multipart/form-data">
名称:<input type="text" name="name"><br/>
描述:<input type="text" name="description"><br/>
数量:<input type="text" name="num"><br/>
价格:<input type="text" name="price"><br/>
种类:<input type="text" name="type"><br/>
<input type="hidden"  value="<%=shop.getId() %>" name="shopId"><br/>
图片:<input type="file" name="file"><br/>
<button type="submit" value="添加">添加</button>
</form>
删除店铺：
<form action="closeShop" method="post">
<input type="hidden" name="id" value="<%=shop.getId()%>">
<button type="submit" value="提交">删除</button>
</form>
</li>	 
<%}%>
</ul>
<br/>
<h4>添加店铺</h4>
<form action="startShop" method="post">
名字:<input type="text" name="name"><br/>
描述:<input type="text" name="description"><br/>
<button type="submit" value="提交">添加</button>
</form>
</div>
<br/>
<h4>订单管理</h4>
<div>
<ul>
<% 
  OrderManagement_Omega ordermanage = new OrderManagement_Omega();
  List<Order_Omega> orders = ordermanage.findOrderByManagerId(manager.getId());
  if(orders!=null&&orders.size()>0){
	  for(Order_Omega order :orders){
		  
	  %>
	  
	  <li>
	  订单号：<%=order.getOrder_num() %><br/>
	  订单状态：<%=order.getStatus() %><br/>
	  订单总额：<%=order.getCost() %><br/>
	  订单操作：<button>取消</button>&nbsp;&nbsp; <button>发货</button>&nbsp;&nbsp; <button>完成</button>
	  </li>
<%
	  }}
%>
</ul>
</div>
<%} %>
</div>

<!-- footer -->

        <footer role="footer">
            <nav role="footer-nav">
            	<ul>
                	<li><a href="index.jsp" title="Work">Work</a></li>
                    <li><a href="about.jsp" title="About">About</a></li>
                    <li><a href="http://blog.csdn.net/dllgdxlxl" title="Blog">Blog</a></li>
                    <li><a href="http://www.ssdut.cn" title="Contact">Contact</a></li>
                </ul>
            </nav>
            <ul role="social-icons">
            	<li><a href="#" ><i class="fa fa-twitter" aria-hidden="true"  style="margin-top:10px"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true" style="margin-top:10px"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"  style="margin-top:10px"></i></a></li>
                <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"  style="margin-top:10px"></i></a></li>
            </ul>
            <p class="copy-right">&copy; 2017  Omega. All rights Resved.More Information <a href="http://www.ssdur.cn" target="_blank" title="ssdut">Java进修小分队</a>
        </footer>

<!-- footer -->



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="js/jquery.min.js" type="text/javascript"></script>

<!-- custom -->

<script src="js/nav.js" type="text/javascript"></script>

<script src="js/custom.js" type="text/javascript"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="js/bootstrap.min.js" type="text/javascript"></script>

<script src="js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>

<script src="js/effects/imagesloaded.js"  type="text/javascript"></script>

<script src="js/effects/classie.js"  type="text/javascript"></script>

<script src="js/effects/AnimOnScroll.js"  type="text/javascript"></script>

<script src="js/effects/modernizr.custom.js"></script>

<!-- jquery.countdown -->

<script src="js/html5shiv.js" type="text/javascript"></script>
</body>
</html>