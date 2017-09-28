<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Вхід в панель керування</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/resources/vendors/animate.css/animate.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/resources/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form  action="/login"  method="post" >
              <h1>Вхід</h1>
              <c:if test="${empty param.error and param.error!=null}">
              <label>Сталась помилка при спробі увійти  в систему</label>
              </c:if>
              <div>
                <input type="text" class="form-control" name="username" placeholder="Логін" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Пароль" required="" />
              </div>
              <div>
                <button class="btn btn-default submit" type="submit">Увійти</button>
                <a class="reset_pass" href="/resetPassword">Забули пароль?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Новачок на сайті?
                  <a href="#signup" class="to_register">Створити акаунт</a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-cogs"></i>Панель керування</h1>
                  <p>©2017 Всі права захищені. НУЛП</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form id="regForm" disabled>
              <h1>Створити профіль</h1>
              <div>
                <input type="text" name="firstName" class="form-control" placeholder="Імя" required="" />
              </div>
              <div>
                <input type="text" name="lastName" class="form-control" placeholder="Прізвище" required="" />
              </div>
              <div>
                <input type="email" name="email" class="form-control" placeholder="Емейл" required="" />
              </div>
              <div>
                <input type="password" name="password" class="form-control" placeholder="Пароль" required="" />
              </div>
              <div>
                <input type="password" name="password2" class="form-control" placeholder="Повторіть пароль" required="" />
              </div>
              <div>
                <button class="btn btn-default" onclick="signup()">Зареєструватись</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Присутній в системі?
                  <a href="/login" class="to_register">Увійти</a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-cogs"></i>Панель керування</h1>
                  <p>©2017 Всі права захищені. НУЛП</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
        <jsp:include page="globalJs.jsp"></jsp:include>
        <script src="/resources/js/custom.js"
        	type="text/javascript"></script>
  </body>
</html>
