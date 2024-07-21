<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
if (session.getAttribute("password") == null) {
response.sendRedirect("login.jsp");
}

%>

<html lang="en">
<head>
    <title>Pacific - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
<div class="container">
<a class="navbar-brand" href="index.html">Pacific<span>Travel Agency</span></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
<span class="oi oi-menu"></span> Menu
</button>


     <div class="collapse navbar-collapse" id="ftco-nav">
       <ul class="navbar-nav ml-auto">
         <li class="nav-item active"><a href="index.php" class="nav-link">Home</a></li>
<li class="nav-item"><a href="voyage.php" class="nav-link">Destination</a></li>
<li class="nav-item"><a href="VoyageAcc.php" class="nav-link">Circuit accompagné</a></li>
<li class="nav-item"><a href="hotel.php" class="nav-link">Hotel</a></li>
<li class="nav-item"><a href="../Eterna/activites.jsp" class="nav-link">Activites</a></li>
<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
    <li class="nav-item"><a class="nav-link">Welcome ${sessionScope.nom}</a></li>
     
     
     


<c:choose>
<c:when test="${session == null}">
<li>
<!-- /Wishlist -->

<!-- Cart -->

</a>

</li>
</c:when>


<c:when test="${session != null}">
   <li>

                                                                                                                              <!-- /Wishlist -->

                                                                                                                                             

                                                                                                                                              <a href="panier.php?id_u=${idUtilisateur}">

                                                                                                                                                            

                                                                                                                                                             <span><div class="qty">${nbrCmd} <i class="fa fa-shopping-cart"></i>Panier</div></span>

                                                                                                                                                            

                                                                                                                                              </a>

                                                                                                                                             


<!-- Cart -->

<a href="logout.php">
<i class="fa fa-user-o"></i>
<span>Déconnection</span>
</a>
<li>
</c:when>
</c:choose>
</ul>

 </div>
</div>
</nav>
<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_1.jpg');">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
      <div class="col-md-9 ftco-animate pb-5 text-center">
         <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Tour List <i class="fa fa-chevron-right"></i></span></p>
         <h1 class="mb-0 bread">Tours List</h1>
     </div>
 </div>
</div>
</section>


 


<section class="ftco-section">
   <div class="container">
   
       

<c:choose>
      <c:when test="${nbrCmd == 0}">
      <center><h1>Votre Panier est vide!</h1></center>
      <center><img src="./img/empty.png" alt=""></center>
      </c:when>
      <c:when test="${nbrCmd != 0}">
      
        <!-- row -->
        <div class="row">
          <!-- ASIDE -->
          
      <h4>Finalisez vos Reservations:</h4>
            
      
      
          <!-- /ASIDE -->

          <!-- STORE -->
          <div id="store" class="col-md-9">
            <!-- store top filter -->
            
</div>
          <!-- /STORE -->
        </div>
        <!-- /row -->
        </c:when>
        </c:choose>
               </div>
</section>
            <!-- store products -->
                
            <div class="row">
            
            <div></div>
            
           <section class="ftco-section">
   <div class="container">
    <div class="row">
            
            <c:forEach items="${panier}" var="q">
    
       <div class="col-md-4 ftco-animate">
          <div class="project-wrap">
          
         <a href="#" class="img"  style="background-image: url(data:image/jpg;base64);"> 
       <img src="data:image/jpg;base64,${e.getVoyageParId(q.getId_Voyage()).getBase64Image()}" width="300" height="300" /> 
                <span class="price">$ ${e.getVoyageParId(q.getId_Voyage()).getPrix()} /person</span>
            </a>
            <div class="text p-4">
                <span class="days">${e.getVoyageParId(q.getId_Voyage()).getDuree()} Days Tour</span>
                <h3 class="product-name">${e.getVoyageParId(q.getId_Voyage()).getDestination()}</h3>
                
                
                <p class="location"><span class="fa fa-map-marker"></span> ${e.getVoyageParId(q.getId_Voyage()).getDestination()}, ${e.getVoyageParId(q.getId_Voyage()).getContinent()}</p>
               Depart le  ${e.getVoyageParId(q.getId_Voyage()).getDate()}
                <ul>
                   
                   <li><span class="flaticon-king-size"></span>${h.getHotelParId(q.getId_hotel()).getNom_hotel()}</li>
                   <li><span class="flaticon-mountains"></span>${e.getVoyageParId(q.getId_Voyage()).getTheme()}</li>
               </ul>
               <div class="add-to-cart">
			<a  class="add-to-cart-btn" href="details.php?id_c=${ q.getId_Voyage() }">Plus d'Info</a>
									</div>
           </div>
          
                      <div class="product-btns"> 
                  <a href="supprimer_panier.php?id_panier=${ q.getId_panier() }" >
                  <button class="button button1">Supprimer
                    <style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px 100px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid   #FF4500;
}

.button1:hover {
  background-color:   #FF4500;
  color: white;
}


</style>
</button>
</a>
</div>
              
       </div>
   </div>
   
   </c:forEach>
   
   <c:forEach items="${panierVAcc}" var="a">
    
       <div class="col-md-4 ftco-animate">
          <div class="project-wrap">
          
          <a href="#" class="img"  style="background-image: url(data:image/jpg;base64);"> 
       <img src="data:image/jpg;base64,${v.getVoyage_accParId(a.getId_Voyage_acc()).getBase64Image()}" width="300" height="300" />
                <span class="price">$ ${v.getVoyage_accParId(a.getId_Voyage_acc()).getPrix_acc()} /person</span>
            </a>
            <div class="text p-4">
                <span class="days">${v.getVoyage_accParId(a.getId_Voyage_acc()).getDuree_acc()} Days Tour</span>
                <h3 class="product-name">${v.getVoyage_accParId(a.getId_Voyage_acc()).getDestination_acc()}</h3>
                
                
                <p class="location"><span class="fa fa-map-marker"></span> ${v.getVoyage_accParId(a.getId_Voyage_acc()).getDestination_acc()}, ${v.getVoyage_accParId(a.getId_Voyage_acc()).getContinent_acc()}</p>
               Depart le  ${v.getVoyage_accParId(a.getId_Voyage_acc()).getDate_acc()}
                <ul>
                   <li><span class="flaticon-mountains"></span>${v.getVoyage_accParId(a.getId_Voyage_acc()).getTheme_acc()}</li>
                   <li><span class="flaticon-mountains"></span>${v.getVoyage_accParId(a.getId_Voyage_acc()).getHebergement_acc()}</li>
                   <li><span class="flaticon-mountains"></span>${v.getVoyage_accParId(a.getId_Voyage_acc()).getActivite()}</li>
                   
                 
               </ul>
               
               ${v.getVoyage_accParId(a.getId_Voyage_acc()).getGenre()}
               ${v.getVoyage_accParId(a.getId_Voyage_acc()).getGuide()}
               
           </div>
           <div class="product-btns"> 
                  <a href="supprimer_panierAcc.php?id_panier_acc=${ a.getId_panier_acc() }" >
                  <button class="button button1">Supprimer
                    <style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px 100px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid   #FF4500;
}

.button1:hover {
  background-color:   #FF4500;
  color: white;
}


</style>
</button>
</a>
</div>
                    
       </div>
   </div>
   
   </c:forEach>
   
   </div>
   </div>
   </section>
            
            
            
               
            </div>
            <!-- /store products -->

            <!-- store bottom filter -->
            
            <!-- /store bottom filter -->
          
 




        
        
        
        

<section class="ftco-intro ftco-section ftco-no-pt">
 <div class="container">
 <form action="confirmation.php"  method="POST" class="bg-light p-5 contact-form">
    <div class="row justify-content-center">
       <div class="col-md-12 text-center">
          <div class="img"  style="background-image: url(images/bg_2.jpg);">
             <div class="overlay"></div>
             <h2>We Are Pacific A Travel Agency</h2>
             <p>We can manage your dream building A small river named Duden flows by their place</p>
             
   
            
          
             <p class="mb-0"><a href="#" class="btn btn-primary px-4 py-3">
             <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5"></a></p>
         </div>
     </div>
 </div>
     </form> 
 
</div>
</section>

<footer class="ftco-footer bg-bottom ftco-no-pt" style="background-image: url(images/bg_3.jpg);">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md pt-5">
        <div class="ftco-footer-widget pt-md-5 mb-4">
          <h2 class="ftco-heading-2">About</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
          <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
            <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
        </ul>
    </div>
</div>
<div class="col-md pt-5 border-left">
    <div class="ftco-footer-widget pt-md-5 mb-4 ml-md-5">
      <h2 class="ftco-heading-2">Infromation</h2>
      <ul class="list-unstyled">
        <li><a href="#" class="py-2 d-block">Online Enquiry</a></li>
        <li><a href="#" class="py-2 d-block">General Enquiries</a></li>
        <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
        <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
        <li><a href="#" class="py-2 d-block">Refund Policy</a></li>
        <li><a href="#" class="py-2 d-block">Call Us</a></li>
    </ul>
</div>
</div>
<div class="col-md pt-5 border-left">
   <div class="ftco-footer-widget pt-md-5 mb-4">
      <h2 class="ftco-heading-2">Experience</h2>
      <ul class="list-unstyled">
        <li><a href="#" class="py-2 d-block">Adventure</a></li>
        <li><a href="#" class="py-2 d-block">Hotel and Restaurant</a></li>
        <li><a href="#" class="py-2 d-block">Beach</a></li>
        <li><a href="#" class="py-2 d-block">Nature</a></li>
        <li><a href="#" class="py-2 d-block">Camping</a></li>
        <li><a href="#" class="py-2 d-block">Party</a></li>
    </ul>
</div>
</div>
<div class="col-md pt-5 border-left">
    <div class="ftco-footer-widget pt-md-5 mb-4">
       <h2 class="ftco-heading-2">Have a Questions?</h2>
       <div class="block-23 mb-3">
         <ul>
           <li><span class="icon fa fa-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
           <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
           <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@yourdomain.com</span></a></li>
       </ul>
   </div>
</div>
</div>
</div>
<div class="row">
  <div class="col-md-12 text-center">

    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
      <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
  </div>
</div>
</div>
</footer>



<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>