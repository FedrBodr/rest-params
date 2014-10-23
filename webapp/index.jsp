<%@ page contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>RestParams</title>
    <mеta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="css/styles.css" rel="stylesheet">

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/pick-a-color-1.2.3.min.css">

    <script  src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function() {
            // The DOM is ready!
            $(".pick-a-color").pickAColor();
        });
    </script>


</head>
<body>
<div class="wrapper container">
	<header></header>

	<div id="accordion">
		<h3>Общие настройки</h3>
		<div class="row">
			<div class="col-md-4">
				<input type="text" value="008000" name="colorHex" class="pick-a-color form-control">
			</div>
			<div class="col-md-4">
				<input type="text" value="ff0000" name="colorHex" class="pick-a-color form-control">
			</div>
			<div class="col-md-4">
				<input type="text" value="0000ff" name="colorHex" class="pick-a-color form-control">
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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/tinycolor-0.9.15.min.js"></script>
<script src="js/pick-a-color-1.2.3.min.js"></script>
</body>
</html>