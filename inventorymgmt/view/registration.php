<?php
    include '../controller/connection.php';
    $conn= connect();
    
    $m='';
    // _POST is a built-in global variable of php
    if(isset($_POST['submit'])){
       $name= $_POST['name'];
       $uname= $_POST['uname'];
       $email= $_POST['email']?$_POST['email']:'';
       $pass= $_POST['password'];
       $rPass= $_POST['rpassword'];
       if($pass===$rPass){

           $sq= "INSERT INTO users_info(name, u_name, email, password) VALUES('$name', '$uname', '$email','$pass')";
           if($conn->query($sq)===true){
			   echo "<script>alert('Registered Successfully')</script>";
               //header('Location: login.php');
			   header("Refresh:0 , url = /inventorymgmt/view/login.php");
               exit();
           }
           else{
               $m='Connection not established!';
           }
       }
       else {
           $m= "Passwords doesn't match!";
       }
    }
?>
<html>
    <head>
        <title>Registration Form</title>
		<link rel="icon" href="inventory.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="../css/registration.css">
				<style>
   body {
      background-image: url('../img/newuser.jpg');
	  background-size: cover; background-repeat: no-repeat;
	  background-attachment: fixed;
	  background-size: 100% 100%; 
	  height:100%; padding-top: 80px; 
	  text-align: center;
   }
   </style>
    </head>

    
    <body>
        <form method="POST" action="registration.php" enctype="multipart/form-data">
            <div class="container reg">
                <!-- message -->
                <span>
                    <?php 
                        if($m!='') 
                            echo $m; 
                    ?>
                </span>
                <h1><b>Registration Form</b></h1>
                <hr>
                <div>
                    <label for="name">Your Name<span>*</span></label>
                    <input name="name" id="name" type="text" placeholder="Enter Your Name" required>
                </div>
                <div>
                    <label for="uname">Your Username<span>*</span></label>
                    <input name="uname" id="uname" type="text" placeholder="Enter Your Username" onchange="checkUsername(this.value); checkUser(this.value);" required>
                    <small id="checktext"></small>
                    <small id="checkuser"></small>
                </div>
                <div>
                    <label for="email">Your Email</label>
                    <input name="email" id="email" type="text" placeholder="Enter Your Email" onchange="checkUsermail(this.value);">
                    <small id="checkmail"></small>
                </div>
                <div>   
                    <label for="password">Password<span>*</span></label>
                    <input name="password" id="password" type="password" placeholder="Enter A Password" onchange="checkUserpass(this.value);" required>
                    <small id="checkpass"></small>
                 </div>
                 <div>
                     <label for="rpassword">Confirm Password<span>*</span></label>
                     <input name="rpassword" id="rpassword" type="password" placeholder="Repeat the Password" required>
                 </div>
                 <div style="text-align: center">
                     <p><span>***</span>By creating an account you agree to our Terms & Conditions.</p>
                 </div>
                 <div style="text-align: center; padding: 20px;">
                     <input type="submit" class="btn btn-success" value="Submit" name="submit">  
                 </div>
                 <div style="text-align: center;">
                     <p>Already have an account? 
                        <br>
                        <a href="login.php">
                            <input  type="button" class="btn btn-primary" value="signin">
                        </a>
                    </p>
                 </div>
            </div>
        </form>
    </body>
    <script type="text/javascript" src="../js/script.js"></script>
</html>

<script>
    window.onload= function(){
          document.getElementsByClassName('reg')[0].style.color='whitesmoke';
    };
</script>
<script>
    $(document).ready(function(){
        $('.reg').css('color', 'whitesmoke');
    });
</script>