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
      <title>Керування Контентом</title>
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
      <script type="application/javascript">

         function loadFields(){
              $.ajax({
                           url: "/api/fields/",
                           method: "GET"
                         }).done(function(response) {
                             var items = response._embedded;
                              var template = $('#all-fields-template').html();
                               Mustache.parse(template);   // optional, speeds up future uses
                               var rendered = Mustache.render(template, items);
                               $('#fields-list').html(rendered);
                         });
         }
         function removeField(id){
             $.ajax({
               url: "/api/fields/"+id,
               method: "DELETE"
             }).done(function() {
                 loadFields();
             });
         }
      </script>
      <script id="all-fields-template" type="x-tmpl-mustache">
         {{#fields}}
         <div class="col-sm-4 sm-margin-b-2">
               <div class="service" data-height="height">
                  <div class="service-element">
                     <i class="service-icon icon-notebook"></i>
                  </div>
               <div class="service-info">
                <h3>{{title}}</h3>
                <p class="margin-b-5">{{description}}</p>
          </div>
           <a class="link" href="#" onclick="removeField({{id}})">Delete</a>
          </div>
        </div>
        {{/fields}}
      </script>
   </head>
   <!-- END HEAD -->
   <!-- BODY -->
   <body>
      <jsp:include page="header.jsp"></jsp:include>
      <!--========== PARALLAX ==========-->
      <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/img/1920x1080/01.jpg">
         <div class="parallax-content container">
            <h1 class="carousel-title">Адмін Панель</h1>
            <p>Керування контентом сайту</p>
         </div>
      </div>
      <!--========== PARALLAX ==========-->
      <!--========== PAGE LAYOUT ==========-->
      <div class="container">
         <div class="row">
            <div class="col-sm-3 col-md-3">
               <div class="panel-group" id="accordion">
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                           </span>Content</a>
                        </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                           <table class="table">
                              <tr>
                                 <td>
                                    <a onclick="loadFields()">Fields</a>
                                 </td>
                              </tr>
                              <tr>
                                  <td>
                                      <a>Add Field</a>
                                   </td>
                             </tr>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                           </span>Modules</a>
                        </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                           <table class="table">
                              <tr>
                                 <td>
                                    <a href="#">Orders</a>
                                 </td>
                              </tr>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                           </span>Account</a>
                        </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                           <table class="table">
                              <tr>
                                 <td>
                                    <a href="#">Change Password</a>
                                 </td>
                              </tr>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                           </span>Reports</a>
                        </h4>
                     </div>
                     <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                           <table class="table">
                              <tr>
                                 <td>
                                    <span class="glyphicon glyphicon-usd"></span><a href="#">Sales</a>
                                 </td>
                              </tr>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-9 col-md-9 tab-content">
               <div class="well tab-pane active" id="fields-list-tab">
                  <h1>Fields of education</h1>
                  <div id="fields-list">
                  </div>
               </div>
                  <div class="well tab-pane" id="fields-add-tab">
                     <h1>Add field of education</h1>
                 </div>
            </div>
         </div>
      </div>
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
      <script src="/resources/js/components/mustache.js" type="text/javascript"></script>
   </body>
   <!-- END BODY -->
</html>