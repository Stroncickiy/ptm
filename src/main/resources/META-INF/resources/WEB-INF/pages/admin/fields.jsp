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
          <script type="application/javascript">
                 function addField(){
                    var form = $('#newFieldForm')[0];
                    var data = new FormData(form);
                    $.ajax({
                       url: "/admin/directions/add",
                       method: "POST",
                       enctype: 'multipart/form-data',
                       processData: false,
                       contentType: false,
                       cache: false,
                       data: data
                     }).done(function(response){
                         $('a[href="#tab_content1"]').tab('show');
                         loadFields();
                         form.reset();
                     });
                     return false;
                 }

                 function loadFields(){
                      $.ajax({
                                   url: "/api/directions/",
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
                       url: "/api/directions/"+id,
                       method: "DELETE"
                     }).done(function() {
                         loadFields();
                     });
                 }
              </script>
       <script id="all-fields-template" type="x-tmpl-mustache">
        {{#directions}}
            <div class="col-md-55">
                <div class="thumbnail">
                    <div class="image view view-first">
                        <img style="width: 100%; display: block;" src="/images/direction?id={{id}}"/>
                        <div class="mask no-caption">
                            <div class="tools tools-bottom">
                                <a href="#" onclick="removeField({{id}})" ><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="caption">
                        <p><strong>{{title}}</strong>
                        </p>
                        <p>{{description}}</p>
                    </div>
                </div>
            </div>
            {{/directions}}
       </script>

        </head>

        <body class="nav-md" onload="loadFields()">
            <div class="container body">
                <div class="main_container">
                    <jsp:include page="sideBar.jsp"></jsp:include>
                    <jsp:include page="topNavigation.jsp"></jsp:include>

                    <!-- page content -->
                    <div class="right_col" role="main">
                        <div class="">
                            <div class="page-title">
                                <div class="title_left">
                                    <h3>Галузі навчання</h3>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Керування</h2>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                                    <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" onclick="loadFields()" aria-expanded="true">Перегляд</a>
                                                    </li>
                                                    <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Додати</a>
                                                    </li>
                                                </ul>
                                                <div id="myTabContent" class="tab-content">
                                                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="x_panel">
                                                                    <div class="row">
                                                                        <p>Ці галузі вивчаються на кафедрі</p>
                                                                        <div id="fields-list">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                                              <div class="col-md-6 col-xs-12">
                                                                        <div class="x_panel">
                                                                          <div class="x_title">
                                                                            <h2>Додавання галузі навчання</h2>
                                                                            <div class="clearfix"></div>
                                                                          </div>
                                                                          <div class="x_content">
                                                                            <br />
                                                                            <form class="form-horizontal form-label-left" id="newFieldForm" onsubmit="return false;" enctype="multipart/form-data">
                                                                              <div class="form-group">
                                                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Назва</label>
                                                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                                                  <input type="text" name="title" class="form-control" placeholder="Назва">
                                                                                </div>
                                                                              </div>
                                                                                 <div class="form-group">
                                                                                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Опис
                                                                                      </label>
                                                                                      <div class="col-md-9 col-sm-9 col-xs-12">
                                                                                        <textarea name="description" class="form-control" rows="3" placeholder='введіть опис'></textarea>
                                                                                      </div>
                                                                                </div>
                                                                                 <div class="form-group">
                                                                                  <label class="control-label col-md-3 col-sm-3 col-xs-12">Картинка</label>
                                                                                  <div class="col-md-9 col-sm-9 col-xs-12">
                                                                                    <input type="file" name="image" class="form-control">
                                                                                  </div>
                                                                                 <div class="form-group">
                                                                                       <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                                                                         <button onclick="addField()" class="btn btn-success">Додати</button>
                                                                                       </div>
                                                                                </div>
                                                                            </div>
                                                                            </form>
                                                                          </div>
                                                                        </div>
                                                                      </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /page content -->
                    <jsp:include page="footer.jsp"></jsp:include>

                </div>
            </div>

            <jsp:include page="adminJsEssentials.jsp"></jsp:include>

        </body>

        </html>