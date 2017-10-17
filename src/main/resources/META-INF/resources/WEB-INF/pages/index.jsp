<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8"/>
        <title>Кафедра "Мехатроніка та прецизійна роботика"</title>
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

        <!--========== SLIDER ==========-->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="container">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
            </div>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="/resources/img/1920x1080/01.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h5 class="carousel-title">Кафедра Приладів Точної Механіки</h5>
                                <p>Кафедра готує фахівців із сучасних інформаційних технологій для приладобудування – інтелектуальних мехатронних систем.
                                 <br>У поєднанні електроніки та комп’ютерного проектування з однією із найдавніших технічних наук – механікою, динамічно сформувався новий напрямок – мехатроніка.
                                 <br>Якщо ти бажаєш стати фахівцем в сфері робототехніки, не зволікай, приєднуйся до нас
                                </p>
                            </div>
                            <a href="/about" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Про кафедру</a>
                        </div>
                    </div>
                </div>
                 <div class="item">
                <img class="img-responsive" src="/resources/img/1920x1080/01.jpg" alt="Slider Image">
                <div class="container">
                         <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h5 class="carousel-title">Кафедра Приладів Точної Механіки</h5>
                            <p>Ми надаємо інженерно-наукові послуги і відкриті для співпраці. Якщо ви зацікавлення, звяжіться з нами для продуктивної роботи.
                            </p>
                        </div>
                        <a href="/contacts" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Контакти</a>
                    </div>
                </div>
            </div>

            </div>
        </div>
        <!--========== SLIDER ==========-->

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
                <c:forEach items="${news}" var="newsItem">
                <!-- Latest Products -->
                <div class="col-sm-4 sm-margin-b-50">
                    <div class="margin-b-20">
                        <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                            <img class="img-responsive" src="/images/news?id=${newsItem.id}" alt="Latest News Image">
                        </div>
                    </div>
                    <h4><a href="#">${newsItem.title}</a></h4>
                    <p>${newsItem.description}</p>
                    <a class="link" href="/news/${newsItem.id}">Читати більше</a>
                </div>
                <!-- End Latest Products -->
                </c:forEach>
            </div>
            <!--// end row -->
        </div>
        <!-- End Latest Products -->
        <!-- Work -->
        <div class="bg-color-sky-light overflow-h">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Спеціальності</h2>
                        <p>На нашій кафедрі є спеціальності різного плану, як інформаційні так і механічного спрямування</p>
                    </div>
                </div>
                <!--// end row -->

                <!-- Masonry Grid -->
                <div class="masonry-grid">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                     <c:forEach items="${fields}" var="direction" varStatus="loop">
                     <c:if test="${loop.index == 0}" >
                         <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8">
                             <!-- Work -->
                             <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".1s">
                                 <div class="work-overlay">
                                     <img class="full-width img-responsive"  src="/images/direction?id=${direction.id}" alt="Direction Image">
                                 </div>
                                 <div class="work-content">
                                     <h3 class="color-white margin-b-5">${direction.title}</h3>
                                     <p class="color-white margin-b-0">${direction.description}</p>
                                 </div>
                                 <a class="content-wrapper-link" href="/directions/${direction.id}"></a>
                             </div>
                             <!-- End Work -->
                         </div>
                     </c:if>
                      <c:if test="${loop.index != 0}" >
                      <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                        <!-- Work -->
                        <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".2s">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="/images/direction?id=${direction.id}" alt="Direction Image">
                            </div>
                            <div class="work-content">
                                    <h3 class="color-white margin-b-5">${direction.title}</h3>
                                     <p class="color-white margin-b-0">${direction.description}</p>
                            </div>
                             <a class="content-wrapper-link" href="/directions/${direction.id}"></a>
                        </div>
                        <!-- End Work -->
                      </div>
                      </c:if>
                     </c:forEach>
                </div>
                <!-- End Masonry Grid -->
            </div>
        </div>
        <!-- End Work -->
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
        <script src="/resources/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
        <script src="/resources/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
        <script src="/resources/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="/resources/js/layout.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/wow.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/swiper.min.js" type="text/javascript"></script>
        <script src="/resources/js/components/masonry.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>