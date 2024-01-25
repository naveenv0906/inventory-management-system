<?php
?>
<html>
    <head>
        <title>Shopify Inventory</title>
		<link rel="icon" href="inventory.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="../css/style.css">
		<style>
   body {
      background-image: url('../img/shopify.jpg');
	  background-size: cover; background-repeat: no-repeat;
	  background-attachment: fixed;
	  background-size: 100% 100%; 
	  height:100%; padding-top: 80px; 
	  text-align: center;
      font-family: cursive;
   }
   .glowing {
      font-size: 80px;
      color: #fff;
      text-align: center;
      -webkit-animation: glowing 1s ease-in-out infinite alternate;
      -moz-animation: glowing 1s ease-in-out infinite alternate;
      animation: glowing 1s ease-in-out infinite alternate;
   }
   @-webkit-keyframes glowing{
      from {
         text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #4f00b6, 0 0 40px #17057c, 0 0 50px #29c2ff, 0 0 60px #96fbff, 0 0 70px #1f0352;
      }
      to {
      text-shadow: 0 0 20px #fff, 0 0 30px #2b4ebe, 0 0 40px #4276e6, 0 0 50px #4644cf, 0 0 60px #3533d1, 0 0 70px #493cbb, 0 0 80px #8beeff;
   }
}
</style>
    </head>

    <body>

<!--Welcome Section-->

<div>

  <img src="shopify_logo.jpg" style="height:200px; border-radius: 50%; border: 8px solid #FEDE00;">
  <h1 class="glowing">Welcome to Shopify Inventory!</h1>
  
        <div class="col-sm-6" style="padding-top: 50px">
            <a href="login.php">
                <input  type="button" class="btn btn-primary pull-right" value="Login">
            </a>
        </div>

        <div class="col-sm-6" style="padding-top: 50px">
            <a href="registration.php">
                <input  type="button" class="btn btn-info pull-left" value="Register">
            </a>
        </div>
        <br>
</div>

    </body>

</html>