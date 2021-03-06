<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app="fpropApp" ng-controller="MainCtrl">
<head>
    <title>RestParams</title>
    <mеta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%-- TODO change all resources to local files --%>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/styles.css'/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/resources/css/angular-slider.min.css'/>" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

    <script src="<c:url value='/resources/js/ui-bootstrap-0.11.2.min.js'/>"></script>
    <script src="<c:url value='/resources/js/ui-bootstrap-tpls-0.11.2.min.js'/> "></script>
    <script src="<c:url value='/resources/js/pages/fpar.js'/> "></script>
    <script src="<c:url value='/resources/js/angular-slider.min.js'/> "></script>

</head>
<body ng-controller="MainCtrl">
<form ng-submit="submitForm()">
    <div class="wrapper container">
        <button type="submit" ng-click="submitForm()">Send</button>
        <label class="checkbox">
            <input type="checkbox" ng-model="oneAtATime">
            Open only one at a time
        </label>
        <input type='text' ng-model="params.fftBandNumber" class="form-control"/>
        <slider floor="0" ceiling="43" step="1" precision="0" ng-model="params.fftBandNumber" ng-change="submitForm()"></slider>
        <accordion close-others="oneAtATime">
            <accordion-group heading="Общие настройки">
                <div class="row">
                    <div class="col-md-4">
                        Цвет 1
                        <input type='color' ng-model="params.colorHex" class="form-control" ng-change="submitForm()"/>
                    </div>
                    <div class="col-md-4">
                        Цвет 2
                        <input type='color' ng-model="params.colorHex2" class="form-control" ng-change="submitForm()"/>
                    </div>
                    <div class="col-md-4">
                        Цвет фона
                        <input type='color' ng-model="params.colorHex3" class="form-control" ng-change="submitForm()"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        Тип визуализации
                        <select class="form-control" ng-model="params.renderAlgorithmType" ng-change="submitForm()">
                            <option ng-repeat="algtype in algtypes" value="{{algtype}}">{{algtype}}</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        Плавающая картинка
                        <select class="form-control" ng-model="params.logoVisualType" ng-change="submitForm()">
                            <option ng-repeat="logotype in logotypes" value="{{logotype}}">{{logotype}}</option>
                        </select>
                    </div>
                    <div class="col-md-4">

                    </div>
                </div>
            </accordion-group>
            <accordion-group heading="Настройки 1-ой формы">
                <div class="row container">
                    Будет - если захочу отдельные настройки каждой из форм, если хотите пишите мне!
                    <a href="mailto:fedrbodr@gmail.com">на мою почту</a>
                </div>
            </accordion-group>
            <accordion-group heading="Информация">
                <div class="row container">
                    Я вас люблю!
                    Все можно развивать бесконечно, вплоть до написания искуственного интелекта который будет определят
                    стиль музыки и
                    затухания и основной ритм и тд и тп
                    Но, на все это нужно время ) Если готовы спонсировать - <a href="mailto:fedrbodr@gmail.com">я готов
                    взяться!</a>
                </div>
            </accordion-group>

        </accordion>

    </div>

</form>
</body>
</html>