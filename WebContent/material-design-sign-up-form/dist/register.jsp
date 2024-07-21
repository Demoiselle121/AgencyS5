<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Material design sign up form</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->

<div id="login-box"  style="position:relative">
<div class="right">
 <img src="Logo.png" alt="Italian Trulli" width="300" height="300" class="center">
  </div>
  <div class="left">
    <center><h1>Sign Up</h1></center>
     <form action="register.php" method="post">
    <input type="text" name="username" placeholder="Username" required="required"/>
    <input type="text" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" placeholder="E-mail" name="email" required="required" />
    <input type="password" name="password" placeholder="Password" required="required" />
    <input type="text" name="telephone" placeholder="Numero de telephone" required="required"/>
   
   <center> <input type="submit" name="signup_submit" value="Sign me up" /></center>
  </div>
  </form>
 <div class="right">
   
  </div>
 
</div>
<!-- partial -->
 
</body>
</html>
