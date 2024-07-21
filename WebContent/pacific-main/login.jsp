<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts_login/icomoon/style.css">

    <link rel="stylesheet" href="css_login/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css_login/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css_login/style.css">

    <title>Login #2</title>
  </head>
  <body>
  

  <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('images_login/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <h3>Login to <strong>Pacific Agency</strong></h3>
            <br>
            
            <form action="login_client.php" method="post">
              <div class="form-group first">
                <label for="username">Username</label>
                <input type="text" name="nom" class="form-control" placeholder="your username" id="username">
              </div>
              <div class="form-group last mb-3">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Your Password" id="password">
              </div>
              
              <div class="d-flex mb-5 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                  <input type="checkbox" checked="checked"/>
                  <div class="control__indicator"></div>
                </label>
                
              </div>
	<a href="../material-design-sign-up-form/dist/register.jsp">Register now</a>
              <input type="submit" value="Log In" class="btn btn-block btn-primary">

            </form>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="js_login/jquery-3.3.1.min.js"></script>
    <script src="js_login/popper.min.js"></script>
    <script src="js_login/bootstrap.min.js"></script>
    <script src="js_login/main.js"></script>
  </body>
</html>
