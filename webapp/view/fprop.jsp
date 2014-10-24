<%@ page contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="fpropApp" ng-controller="MainCtrl">
<head>
    <title>RestParams</title>
    <mеta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/bootstrap.min.css">


    <link href="css/styles.css" rel="stylesheet">

    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/pages/index.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    <script src="view/fprop.js"></script>

</head>
<body>
<div class="wrapper container">
    <header></header>

    <div id="accordion">
        <h3>Общие настройки</h3>
        <div class="row">
            <div class="col-md-4">
                <%--<input type="text" value="008000" name="colorHex" id="colorHex" class="pick-a-color form-control">--%>
                Цвет 1
                <input ng-model="colorHex" value="008000" class="form-control">
            </div>
            <div class="col-md-4">
                Цвет 2
                <input ng-model="colorHex2" value="ff0000" class="form-control">
            </div>
            <div class="col-md-4">
                Цвет 3
                <input ng-model="colorHex3" value="ff9099" class="form-control">
            </div>
        </div>

        <h3>Настройки 1-ой формы</h3>
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
        </div>

        <h3>Настройки 2-ой формы</h3>
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
        </div>
    </div>
</div>


</body>
</html>