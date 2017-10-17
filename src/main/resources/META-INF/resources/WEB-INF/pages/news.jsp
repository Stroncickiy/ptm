<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Новини</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>

        <jsp:include page="globalStyles.jsp"></jsp:include>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="/resources/css/animate.css" rel="stylesheet">

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
                <h1 class="carousel-title">Новини кафедри</h1>
                <p>Будьте в курсі останніх подій кафедри</p>
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!--========== PAGE LAYOUT ==========-->
               <!-- Latest Products -->
               <div class="content-lg container">
                   <div class="row margin-b-40">
                       <div class="col-sm-6">
                           <h2>Останні новини</h2>
                       </div>
                   </div>
                   <!--// end row -->

                   <div class="row">
                       <!-- Latest Products -->
                       <div class="col-sm-4 sm-margin-b-50">
                           <div class="margin-b-20">
                               <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                   <img class="img-responsive" src="/resources/img/970x647/01.jpg" alt="Latest Products Image">
                               </div>
                           </div>
                           <h4><a href="#">Кафедра взяла участь у виставці електроніки</a></h4>
                           <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                           <a class="link" href="#">Read More</a>
                       </div>
                       <!-- End Latest Products -->

                       <!-- Latest Products -->
                       <div class="col-sm-4 sm-margin-b-50">
                           <div class="margin-b-20">
                               <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                   <img class="img-responsive" src="/resources/img/970x647/02.jpg" alt="Latest Products Image">
                               </div>
                           </div>
                           <h4><a href="#">Наші студенти завоювали золото на олімпіаді</a></h4>
                           <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                           <a class="link" href="#">Read More</a>
                       </div>
                       <!-- End Latest Products -->

                       <!-- Latest Products -->
                       <div class="col-sm-4 sm-margin-b-50">
                           <div class="margin-b-20">
                               <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                   <img class="img-responsive" src="/resources/img/970x647/03.jpg" alt="Latest Products Image">
                               </div>
                           </div>
                           <h4><a href="#">Додано новий напрямок: моделювання мехаронних систем</a></h4>
                           <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                           <a class="link" href="#">Read More</a>
                       </div>
                       <!-- End Latest Products -->
                   </div>
                   <!--// end row -->
               </div>
               <!-- End Latest Products -->
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

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="/resources/js/layout.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/wow.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>