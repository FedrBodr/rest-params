<%@ page contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app="fpropApp" ng-controller="MainCtrl">
<head>
    <title>RestParams</title>
    <mеta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%-- TODO change all resources to local files --%>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
    <link href="<c:url value='/resources/css/colorpicker.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/styles.css'/>" rel="stylesheet">


    <script src="//code.jquery.com/jquery-1.11.1.js"></script>
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script src="<c:url value='/resources/js/pages/index.js'/>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.min.js"></script>
    <script src="<c:url value='/resources/js/ui-bootstrap-0.11.2.min.js'/>"></script>
    <script src="<c:url value='/resources/js/ui-bootstrap-tpls-0.11.2.min.js'/> "></script>
    <script src="<c:url value='/resources/js/bootstrap-colorpicker-module.js'/> "></script>
    <script src="<c:url value='/resources/js/pages/fpar.js'/> "></script>

</head>
<body>
<form ng-submit="submitForm()">
<div class="wrapper container" ng-controller="MainCtrl">
    <button type="submit">Send</button>
    <label class="checkbox">
            <input type="checkbox" ng-model="oneAtATime">
            Open only one at a time
        </label>
         <accordion close-others="oneAtATime">
            <accordion-group heading="Общие настройки">
                <div class="row">
                    <div class="col-md-4">
                        Цвет 1
                        <input type='color' ng-model="params.colorHex" class="form-control"/>
                        <input type='text' ng-model="params.colorHex" class="form-control"/>
                    </div>
                    <div class="col-md-4">
                        Цвет 2
                        <input type='color' ng-model="colorHex2" class="form-control"/>
                    </div>
                    <div class="col-md-4">
                        Цвет фона
                        <input type='color' ng-model="colorHex3" class="form-control"/>
                    </div>
                </div>
            </accordion-group>
            <accordion-group heading="Настройки 1-ой формы">
                <div class="row">

                </div>
            </accordion-group>
            <accordion-group heading="Настройки 2-ой формы">
                <div class="row">

                </div>
            </accordion-group>

        </accordion>
    </div>
</div>

</form>
</body>
</html>