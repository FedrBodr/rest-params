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
    <script src="<c:url value='/resources/js/ui-bootstrap-0.11.2.min.js'/> "></script>
    <script src="<c:url value='/resources/js/ui-bootstrap-tpls-0.11.2.min.js'/> "></script>
    <script src="<c:url value='/resources/js/bootstrap-colorpicker-module.js'/> "></script>
    <script src="<c:url value='/resources/js/pages/fpar.js'/> "></script>

</head>
<body>
<div class="wrapper container" ng-controller="MainCtrl">
    <div >
        <p>
            <button class="btn btn-default btn-sm" ng-click="status.open = !status.open">Toggle last panel</button>
            <button class="btn btn-default btn-sm" ng-click="status.isFirstDisabled = ! status.isFirstDisabled">Enable / Disable first panel</button>
        </p>

        <label class="checkbox">
            <input type="checkbox" ng-model="oneAtATime">
            Open only one at a time
        </label>
        <accordion close-others="oneAtATime">
            <accordion-group heading="Static Header, initially expanded" is-open="status.isFirstOpen" is-disabled="status.isFirstDisabled">
                This content is straight in the template.
            </accordion-group>
            <accordion-group heading="{{group.title}}" ng-repeat="group in groups">
                {{group.content}}
            </accordion-group>
            <accordion-group heading="Dynamic Body Content">
                <p>The body of the accordion group grows to fit the contents</p>
                <button class="btn btn-default btn-sm" ng-click="addItem()">Add Item</button>
                <div ng-repeat="item in items">{{item}}</div>
            </accordion-group>
            <accordion-group is-open="status.open">
                <accordion-heading>
                    I can have markup, too! <i class="pull-right glyphicon" ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
                </accordion-heading>
                This is just some content to illustrate fancy headings.
            </accordion-group>
        </accordion>
    </div>

    <div id="accordion">
        <h3></h3>
        <div class="row">
            <div class="col-md-4">
                <%--<input type="text" value="008000" name="colorHex" id="colorHex" class="pick-a-color form-control">--%>

            </div>
            <div class="col-md-4">
                Цвет 2
                <input colorpicker ng-model="colorHex2" value="ff0000" class="form-control">
            </div>
            <div class="col-md-4">
                Цвет 3
                <input colorpicker ng-model="colorHex3" value="ff9099" class="form-control">
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