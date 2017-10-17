<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Про кафедру</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>

        <!-- GLOBAL MANDATORY STYLES -->
       <jsp:include page="globalStyles.jsp"></jsp:include>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="/resources/css/animate.css" rel="stylesheet">
        <link href="/resources/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="/resources/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
    </head>
    <!-- END HEAD -->

    <!-- BODY -->
    <body>

        <jsp:include page="header.jsp"></jsp:include>

        <!--========== PARALLAX ==========-->
        <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/img/1920x1080/01.jpg">
            <div class="parallax-content container">
                <h1 class="carousel-title">Про кафедру</h1>
                <p>Деталі про кафедру приладів точної механіки</p>
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!--========== PAGE LAYOUT ==========-->
        <!-- About -->
        <div class="content-lg container">
            <div class="row">
                <div class="col-sm-7 sm-margin-b-50">
                    <div class="margin-b-30">
                        <p>Кафедра ПТМ готує фахівців із сучасних інформаційних технологій для приладобудування – інтелектуальних мехатронних систем.
                        У поєднанні електроніки та комп’ютерного проектування з однією із найдавніших технічних наук – механікою, динамічно сформувався новий напрямок – мехатроніка.</p>
                    </div>
                    <p>Комп’ютери чи мікропроцесори служать засобами, що забезпечують керування прецизійними механічними пристроями, маніпуляторами,
                     промисловими роботами та  приводами і наділяють їх інтелектуальними властивостями. Самі ж механічні вузли комп’ютерів  та
                     їх периферійних засобів також є об’єктами проектування, дослідження та відлагодження. Особлива увага приділяється дослідженню і застосуванню мікросистемних пристроїв (МСТ),
                      які характеризуються малими розмірами, і останніми роками широко використовуються в транспортних засобах, системах безпеки, медицині тощо;
                      а також відповідному CAD - програмному забезпеченню, а саме: комп’ютеризованому проектуванню, освоєнню комп’ютерної розробки технічної документації
                     (зокрема, креслень, схем, розведення друкованих плат тощо), програмуванню мікропроцесорів та верстатів з число-програмним керуванням, володінню іноземними мовами.</p>
                </div>
                <div class="col-sm-4 col-sm-offset-1">
                    <img class="img-responsive" src="/resources/img/640x380/01.jpg" alt="Our Office">
                </div>
            </div>
            <!--// end row -->
        </div>
        <!-- End About -->
        <!--========== END PAGE LAYOUT ==========-->

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <jsp:include page="globalJs.jsp"></jsp:include>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="/resources/vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="/resources/vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="/resources/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="/resources/vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="/resources/vendor/jquery.parallax.min.js" type="text/javascript"></script>
        <script src="/resources/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="/resources/js/layout.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/swiper.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/wow.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>