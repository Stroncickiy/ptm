<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Працівники</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>

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
                <h1 class="carousel-title">Працівники</h1>
                <p>На нашій кафедрі працюють кваліфіковані фахівці різних галузей приладобудування</p>
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!--========== PAGE LAYOUT ==========-->
          <!-- Team -->
                <div class="bg-color-sky-light">
                    <div class="content-lg container">
                        <div class="row">
                            <!-- Team -->
                            <div class="col-sm-4 sm-margin-b-50">
                                <div class="bg-color-white margin-b-20">
                                    <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                        <img class="img-responsive" src="/resources/img/770x860/01.jpg" alt="Team Image">
                                    </div>
                                </div>
                                <h4><a href="#">Alicia Keys</a> <span class="text-uppercase margin-l-20">Project Manager</span></h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                                <a class="link" href="#">Read More</a>
                            </div>
                            <!-- End Team -->

                            <!-- Team -->
                            <div class="col-sm-4 sm-margin-b-50">
                                <div class="bg-color-white margin-b-20">
                                    <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                        <img class="img-responsive" src="/resources/img/770x860/02.jpg" alt="Team Image">
                                    </div>
                                </div>
                                <h4><a href="#">James Millner</a> <span class="text-uppercase margin-l-20">Lead Developer</span></h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                                <a class="link" href="#">Read More</a>
                            </div>
                            <!-- End Team -->

                            <!-- Team -->
                            <div class="col-sm-4 sm-margin-b-50">
                                <div class="bg-color-white margin-b-20">
                                    <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                        <img class="img-responsive" src="/resources/img/770x860/03.jpg" alt="Team Image">
                                    </div>
                                </div>
                                <h4><a href="#">Scarlet Johanson</a> <span class="text-uppercase margin-l-20">Designer</span></h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                                <a class="link" href="#">Read More</a>
                            </div>
                            <!-- End Team -->
                        </div>
                        <!--// end row -->
                    </div>
                </div>
                <!-- End Team -->
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
        <script src="/resources/js/components/wow.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/swiper.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>