<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Панель керування</title>
    <jsp:include page="adminCssEssentials.jsp"></jsp:include>


  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <jsp:include page="sideBar.jsp"></jsp:include>
        <jsp:include page="topNavigation.jsp"></jsp:include>


        <!-- page content -->
        <div class="right_col" role="main">

        </div>
        <!-- /page content -->
     <jsp:include page="footer.jsp"></jsp:include>

      </div>
    </div>

    <jsp:include page="adminJsEssentials.jsp"></jsp:include>

  </body>
</html>
