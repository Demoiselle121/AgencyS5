<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
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

<div class="hero-wrap js-fullheight" style="background-image: url('images/bg_5.jpg');">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text js-fullheight align-items-center" data-scrollax-parent="true">
<div class="col-md-7 ftco-animate">
<span class="subheading">Welcome to Pacific</span>
<h1 class="mb-4">Discover Your Favorite Place with Us</h1>
<p class="caps">Travel to the any corner of the world, without going around in circles</p>
</div>
<a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex align-items-center justify-content-center mb-4">
<span class="fa fa-play"></span>
</a>
</div>
</div>
</div>

<section class="ftco-section ftco-no-pb ftco-no-pt">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="ftco-search d-flex justify-content-center">
<div class="row">
<div class="col-md-12 nav-link-wrap">
<div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
<a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Search Tour</a>

<a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Hotel</a>

</div>
</div>
<div class="col-md-12 tab-wrap">

<div class="tab-content" id="v-pills-tabContent">

<div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
<form action="recherche.php" method="POST" >
<div class="row no-gutters">
<div class="col-md d-flex">
<div class="form-group p-4 border-0">
<label for="#">Destination</label>
<div class="form-field">
<div class="icon"><span class="fa fa-search"></span></div>
<input type="text" name="destination" class="form-control" placeholder="Search place">
</div>
</div>
</div>
<div class="col-md d-flex">
<div class="form-group p-4">
<label for="#">Check-in date</label>
<div class="form-field">
<div class="icon"><span class="fa fa-calendar"></span></div>
 <input id="product_name_fr" name="date" placeholder="Date" class="form-control input-md" required="" type="date"> </div>
</div>
</div> 


<div class="col-md d-flex">
<div class="form-group p-4">
<label for="#">Price Limit</label>
<div class="form-field">
<div class="select-wrap">
<div class="icon"><span class="fa fa-chevron-down"></span></div>
<select name="prix" id="" class="form-control">
<option value="500">$500</option>
<option value="800">$800</option>
<option value="900">$900</option>
<option value="1000">$1,000</option>
<option value="2000">$2,000</option>
<option value="15000">$15,000</option>

</select>
</div>
</div>
</div>
</div>
<div class="col-md d-flex">
<div class="form-group d-flex w-100 border-0">
<div class="form-field w-100 align-items-center d-flex">
<input type="submit" value="Search" class="align-self-stretch form-control btn btn-primary">
</div>
</div>
</div>
</div>
</form>
</div>

<div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
<form action="recherchehotel.php" method="POST" >
<div class="row no-gutters">
<div class="col-lg d-flex">
<div class="form-group p-4 border-0">
<label for="#">Hotel</label>
<div class="form-field">
<div class="icon"><span class="fa fa-search"></span></div>
<input type="text" class="form-control" name ="hotel" placeholder="Search hotel">
</div>
</div>
</div>
<div class="col-lg d-flex">
<div class="form-group p-4 border-0">
<label for="#">City</label>
<div class="form-field">
<div class="icon"><span class="fa fa-search"></span></div>
<input type="text" class="form-control" name ="ville" placeholder="Search city">
</div>
</div>
</div>


<div class="col-lg d-flex">
<div class="form-group p-4">
<label for="#">Price Limit</label>
<div class="form-field">
<div class="select-wrap">
<div class="icon"><span class="fa fa-chevron-down"></span></div>
<select name="prix_hotel" id="" class="form-control">
<option value="500">$500</option>
<option value="800">$800</option>
<option value="900">$900</option>
<option value="1000">$1,000</option>
<option value="2000">$2,000</option>
<option value="15000">$15,000</option>

</select>
</div>
</div>
</div>
</div>
<div class="col-lg d-flex">
<div class="form-group d-flex w-100 border-0">
<div class="form-field w-100 align-items-center d-flex">
<input type="submit" value="Search" class="align-self-stretch form-control btn btn-primary p-0">
</div>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section services-section">
<div class="container">
<div class="row d-flex">
<div class="col-md-6 order-md-last heading-section pl-md-5 ftco-animate d-flex align-items-center">
<div class="w-100">
<span class="subheading">Welcome to Pacific</span>
<h2 class="mb-4">It's time to start your adventure</h2>
<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.
A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
<p><a href="voyage.php" class="btn btn-primary py-3 px-4">Search Destination</a></p>
</div>
</div>
<div class="col-md-6">
<div class="row">
<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
<div class="services services-1 color-1 d-block img" style="background-image: url(images/services-1.jpg);">
<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-paragliding"></span></div>
<div class="media-body">
<p><a href="../Eterna/activites.jsp" class="heading mb-3" >Activities</a></p>
<p>A small river named Duden flows by their place and supplies it with the necessary</p>
</div>
</div>      
</div>
<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
<div class="services services-1 color-2 d-block img" style="background-image: url(images/services-2.jpg);">
<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
<div class="media-body">
<p><a href="VoyageAcc.php" class="heading mb-3" >Travel Arrangements</a></p>
<p>A small river named Duden flows by their place and supplies it with the necessary</p>
</div>
</div>    
</div>
<!-- <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate"> -->
<!-- <div class="services services-1 color-3 d-block img" style="background-image: url(images/services-3.jpg);"> -->
<!-- <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-tour-guide"></span></div> -->
<!-- <div class="media-body"> -->
<!-- <h3 class="heading mb-3">Private Guide</h3> -->
<!-- <p>A small river named Duden flows by their place and supplies it with the necessary</p> -->
<!-- </div> -->
<!-- </div>       -->
<!-- </div> -->
<div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
<div class="services services-1 color-4 d-block img" style="background-image: url(images/services-4.jpg);">
<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-map"></span></div>
<div class="media-body">
<p><a href="hotel.php" class="heading mb-3" >Location</a></p>
<p>A small river named Duden flows by their place and supplies it with the necessary</p>
</div>
</div>      
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section">
   <div class="container">
    <div class="row">
    <div class="col-md-12 heading-section text-center ftco-animate">
<span class="subheading">Pacific Provide Places</span>
<h2 class="mb-4">Select Your Destination</h2>
</div>
    
     <c:forEach items="${voyagess}" var="l">
       <div class="col-md-4 ftco-animate">
          <div class="project-wrap">
            <a href="#" class="img"  style="background-image: url(data:image/jpg;base64);"> 
       <img src="data:image/jpg;base64,${l.getBase64Image()}" width="300" height="300" />${l.getImage()}
            <span class="price">$ ${l.getPrix()}/person</span>

              </a>
            <div class="text p-4">
                <span class="days">${l.getDuree()} Days Tour</span>
                <h3 class="product-name">${l.getDestination()}</h3>
                
                
                <p class="location"><span class="fa fa-map-marker"></span> ${l.getDestination()}, ${l.getContinent()}</p>
               Depart le  ${l.getDate()}
                <ul>
                   
                   <li><span class="flaticon-mountains"></span>${l.getType()}</li>
                   <li>Voyage ${l.getTheme()}</li>
               </ul>
               <div class="add-to-cart">
<a  class="add-to-cart-btn"  href="details.php?id_c=${ l.getId_Voyage() }" >Plus d'Info </a>
</div>
           </div>
         
       </div>
   </div>
     </c:forEach>
   
   
  
</div>
<div class="row mt-5">
  <div class="col text-center">
    <div class="block-27">
      <ul>
        <li><a href="#">&lt;</a></li>
        <li class="active"><span>1</span></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&gt;</a></li>
    </ul>
</div>
</div>
</div>
</div>
</section>


<section class="ftco-section">
   <div class="container">
    <div class="row">
    <div class="col-md-12 heading-section text-center ftco-animate">
<span class="subheading">Destination</span>
<h2 class="mb-4">This is our Destinations</h2>
</div>
    
      <c:forEach items="${voyagesAcc}" var="qq">
    
       <div class="col-md-4 ftco-animate">x
          <div class="project-wrap">
          
        <a href="#" class="img"  style="background-image: url(data:image/jpg;base64);"> 
       <img src="data:image/jpg;base64,${qq.getBase64Image()}" width="300" height="300" />${qq.getImage_acc()}
                <span class="price">$ ${qq.getPrix_acc()}/person</span>
            </a>
            <div class="text p-4">
                <span class="days">${qq.getDuree_acc()} Days Tour</span>
                <h3 class="product-name">${qq.getDestination_acc()}</h3>
                
                
                <p class="location"><span class="fa fa-map-marker"></span> ${qq.getDestination_acc()}, ${qq.getContinent_acc()}</p>
               Depart le  ${qq.getDate_acc()}
                <ul>
                   
                   <li><span class="flaticon-mountains"></span>${qq.getType_acc()}</li>
                   <li>Voyage ${qq.getTheme_acc()}</li>
               </ul>
               
               <p class="location"><span class="fa fa-map-marker"></span> ${qq.getActivite()}, ${qq.getGenre()}</p>
              Guide : ${qq.getGuide()}
                
                
                
                
               <div class="add-to-cart">
<a  class="add-to-cart-btn"  href="detailsVAcc.php?id_c=${ qq.getId_Voyage_acc() }" >Plus d'Info </a>
</div>
           </div>
       </div>
   </div>
   
   </c:forEach>
   
   
  
</div>
<div class="row mt-5">
  <div class="col text-center">
    <div class="block-27">
      <ul>
        <li><a href="#">&lt;</a></li>
        <li class="active"><span>1</span></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&gt;</a></li>
    </ul>
</div>
</div>
</div>
</div>
</section>



<section class="ftco-section ftco-about img"style="background-image: url(images/bg_4.jpg);">
<div class="overlay"></div>
<div class="container py-md-5">
<div class="row py-md-5">
<div class="col-md d-flex align-items-center justify-content-center">
<a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex align-items-center justify-content-center mb-4">
<span class="fa fa-play"></span>
</a>
</div>
</div>
</div>
</section>

<section class="ftco-section ftco-about ftco-no-pt img">
<div class="container">
<div class="row d-flex">
<div class="col-md-12 about-intro">
<div class="row">
<div class="col-md-6 d-flex align-items-stretch">
<div class="img d-flex w-100 align-items-center justify-content-center" style="background-image:url(images/about-1.jpg);">
</div>
</div>
<div class="col-md-6 pl-md-5 py-5">
<div class="row justify-content-start pb-3">
<div class="col-md-12 heading-section ftco-animate">
<span class="subheading">About Us</span>
<h2 class="mb-4">Make Your Tour Memorable and Safe With Us</h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p><a href="panier.php?id_VAcc=${ v.getId_Voyage_acc() }" class="btn btn-primary">Book Your Destination</a></p>
</div>
</div>

</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section testimony-section bg-bottom" style="background-image: url(images/bg_1.jpg);">
<div class="overlay"></div>
<div class="container">
<div class="row justify-content-center pb-4">
<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
<span class="subheading">Testimonial</span>
<h2 class="mb-4">Tourist Feedback</h2>
</div>
</div>
<div class="row ftco-animate">
<div class="col-md-12">
<div class="carousel-testimony owl-carousel">
<div class="item">
<div class="testimony-wrap py-4">
<div class="text">
<p class="star">
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</p>
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
<div class="d-flex align-items-center">
<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
<div class="pl-3">
<p class="name">Roger Scott</p>
<span class="position">Marketing Manager</span>
</div>
</div>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4">
<div class="text">
<p class="star">
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</p>
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
<div class="d-flex align-items-center">
<div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
<div class="pl-3">
<p class="name">Roger Scott</p>
<span class="position">Marketing Manager</span>
</div>
</div>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4">
<div class="text">
<p class="star">
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</p>
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
<div class="d-flex align-items-center">
<div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
<div class="pl-3">
<p class="name">Roger Scott</p>
<span class="position">Marketing Manager</span>
</div>
</div>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4">
<div class="text">
<p class="star">
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</p>
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
<div class="d-flex align-items-center">
<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
<div class="pl-3">
<p class="name">Roger Scott</p>
<span class="position">Marketing Manager</span>
</div>
</div>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap py-4">
<div class="text">
<p class="star">
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</p>
<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
<div class="d-flex align-items-center">
<div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
<div class="pl-3">
<p class="name">Roger Scott</p>
<span class="position">Marketing Manager</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="ftco-section">
   <div class="container">
    <div class="row">
    <div class="col-md-12 heading-section text-center ftco-animate">
<span class="subheading">Destination</span>
<h2 class="mb-4">This is our Hotels</h2>
</div>
    
      <c:forEach items="${hh}" var="ha">
    
       <div class="col-md-4 ftco-animate">x
          <div class="project-wrap">
          
        <a href="#" class="img"  style="background-image: url(data:image/jpg;base64);"> 
       <img src="data:image/jpg;base64,${ha.getBase64Image()}" width="300" height="300" />${ha.getImage_hotel()}
                <span class="price">$ ${ha.getPrix_hotel()}/person</span>
                
            </a>
            
         
  
    <div class="text p-4">
      <p class="star mb-2">
      ${ha.getNom_hotel()}
      <c:choose>
    <c:when test="${ha.getEtoile_hotel() =='1'}">
      <a href="#"></a>
      <br>
      <span class="fa fa-star"></span>
        <br />
    </c:when>  
    <c:when test="${ha.getEtoile_hotel() =='2'}">
    <a href="#"></a>
     <br>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
        <br />
    </c:when>    
    <c:when test="${ha.getEtoile_hotel() =='3'}">
    <a href="#"></a>
     <br>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
        <br />
    </c:when>  
    <c:when test="${ha.getEtoile_hotel() =='4'}">
    <a href="#"></a>
     <br>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
        <br />
    </c:when>  
    
    <c:otherwise>
    <a href="#"></a>
     <br>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span>
      <span class="fa fa-star"></span> 
        <br />
    </c:otherwise>
</c:choose>
       
      </p>
      
      
      <p class="location"><span class="fa fa-map-marker"></span> ${ha.getVille()}</p>
     
   
									
   </div>
   
 </div>
 
</div>
     </c:forEach>
   
</div>
<div class="row mt-5">
  <div class="col text-center">
    <div class="block-27">
      <ul>
        <li><a href="#">&lt;</a></li>
        <li class="active"><span>1</span></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&gt;</a></li>
    </ul>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-intro ftco-section ftco-no-pt">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-12 text-center">
<div class="img"  style="background-image: url(images/bg_2.jpg);">
<div class="overlay"></div>
<h2>We Are Pacific A Travel Agency</h2>
<p>We can manage your dream building A small river named Duden flows by their place</p>
<p class="mb-0"><a href="#" class="btn btn-primary px-4 py-3">Ask For A Quote</a></p>
</div>
</div>
</div>
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
