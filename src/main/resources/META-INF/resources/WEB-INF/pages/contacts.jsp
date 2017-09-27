<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Контакти</title>
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
                <h1 class="carousel-title">Контакти</h1>
                <p>Контакти кафедри приладобудування</p>
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!--========== PAGE LAYOUT ==========-->
        <!-- Contact List -->
        <div class="section-seperator">
            <div class="content-lg container">
                <div class="row">
                    <!-- Contact List -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                            <h3><a href="#">New York</a> <span class="text-uppercase margin-l-20">Head Office</span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i> 1 012 3456 7890</li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i> hq@acidus.com</li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Contact List -->

                    <!-- Contact List -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                            <h3><a href="#">London</a> <span class="text-uppercase margin-l-20">Operation</span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i> 44 77 3456 7890</li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i> operation@acidus.com</li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Contact List -->

                    <!-- Contact List -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                            <h3><a href="#">Singapore</a> <span class="text-uppercase margin-l-20">Finance</span></h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incdidunt ut laboret dolor magna ut consequat siad esqudiat dolor</p>
                            <ul class="list-unstyled contact-list">
                                <li><i class="margin-r-10 color-base icon-call-out"></i> 50 012 456 7890</li>
                                <li><i class="margin-r-10 color-base icon-envelope"></i> finance@acidus.com</li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Contact List -->
                </div>
                <!--// end row -->
            </div>
        </div>
        <!-- End Contact List -->

        <!-- Google Map -->
        <div id="map" class="map height-400"></div>

        <!-- Promo Section -->
        <div class="promo-section overflow-h">
            <div class="container">
                <div class="clearfix">
                    <div class="ver-center">
                        <div class="ver-center-aligned">
                            <div class="promo-section-col">
                                <h2>Our Clients</h2>
                                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>
                                <p>Ipsum dolor sit amet consectetur adipiscing elit sed tempor incididut ut sead laboret dolore magna aliqua enim minim veniam exercitation ipsum dolor sit amet consectetur adipiscing</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="promo-section-img-right">
                <img class="img-responsive" src="/resources/img/970x970/01.jpg" alt="Content Image">
            </div>
        </div>
        <!-- End Promo Section -->
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
        <script src="/resources/js/components/gmap.min.js" type="text/javascript"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsXUGTFS09pLVdsYEE9YrO2y4IAncAO2U&amp;callback=initMap" async defer></script>

    </body>
    <!-- END BODY -->
</html>