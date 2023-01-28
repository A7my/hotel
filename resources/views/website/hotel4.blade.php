<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Elite</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="http://127.0.0.1:8000/website_assets/assets/img/LOGO.jpg" rel="icon">
  <link href="http://127.0.0.1:8000/website_assets/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/cafe/assets/css/style.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/cafe/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/cafe/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="http://127.0.0.1:8000/website_assets/assets/cafe/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="http://127.0.0.1:8000/website_assets/assets/css/style.css" rel="stylesheet">

  <!-- <link href="assets/css/style-rtl.css" rel="stylesheet"> -->

  <!-- =======================================================
  * Template Name: Medicio - v4.8.1
  * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
      <div class="align-items-center d-none d-md-flex">
        <i class="bi bi-clock"></i> Monday - Saturday, 8AM to 10PM
      </div>
      <div class="d-flex align-items-center">
        <i class="bi bi-phone"></i> Call us now {{$contacts1->phone}}
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="{{url('hotel')}}" class="logo me-auto"><img src="http://127.0.0.1:8000/website_assets/assets/img/LOGO.jpg" alt=""></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto fs-6" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto fs-6" href="#about">About</a></li>
          <li><a class="nav-link scrollto fs-6" href="#services">Services</a></li>
          <li><a class="nav-link scrollto fs-6" href="#departments">Cafe&Resturent</a></li>
          <li><a class="nav-link scrollto fs-6" href="#doctors">Teams</a></li>
          <li class="dropdown"><a href="#" class="fs-6"><span>Hotels</span> <i class="bi bi-chevron-down fs-6"></i></a>
            <ul>


                  <li><a href="{{url('hotel1')}}">Hotel 1</a></li>
                  <li><a href="{{url('hotel2')}}">Hotel 2</a></li>
                  <li><a href="{{url('hotel3')}}">Hotel 3</a></li>
                  <li><a href="{{url('hotel4')}}">Hotel 4</a></li>


            </ul>
          </li>
          <li><a class="nav-link scrollto fs-6" href="#contact">Contact</a></li>
          <li class="dropdown"><a href="#" ><span class="fs-6"> language <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 512 512" strok="#fff"><title>ionicons-v5-l</title><line x1="48" y1="112" x2="336" y2="112" style="fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><line x1="192" y1="64" x2="192" y2="112" style="fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><polyline points="272 448 368 224 464 448" style="fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><line x1="301.5" y1="384" x2="434.5" y2="384" style="fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><path d="M281.3,112S257,206,199,277,80,384,80,384" style="fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><path d="M256,336s-35-27-72-75-56-85-56-85" style="fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/></svg></span> <i class="bi bi-chevron-down fs-6"></i></a>
            <ul>
              <li><a href="{{url('hotel')}}">english</a></li>
              <li><a href="{{url('hotelAR')}}">arabic</a></li>
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
        <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">BOOK</span> AROOM</a>
    </div>
  </header>
  <!-- End Header -->




  <!-- ======= Hero Section ======= -->
  <section id="hero1" class="d-flex align-items-center">
      <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100">
        <div class="row">
          <div class="col-lg-8">
            <h1>Welcome to <span>
              {{$feat->hotel_name}}  </span></h1>



          </div>
          <div class="col-lg-4 d-flex align-items-center justify-content-center position-relative" data-aos="zoom-in" data-aos-delay="200">
            <a href="{{$feat->link}}" class="glightbox play-btn"></a>
          </div>

        </div>
      </div>
    </section>

  <main id="main">





    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>WHY BOOK WITH US?</h2>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bi bi-bookmark-check-fill"></i></div>
              <h4 class="title"><a href="">Excellence</a></h4>
              <p class="description">
                {{$about->Excellence_description}}
                </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="fa-brands fa-buffer"></i></div>
              <h4 class="title"><a href="">Service</a></h4>
              <p class="description">
                {{$about->Service_description}}
              </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="fa-sharp fa-solid fa-people-group"></i></div>
              <h4 class="title"><a href="">Teamwork</a></h4>
              <p class="description">
                {{$about->Teamwork_description}}
              </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="fa-solid fa-thumbs-up"></i></div>
              <h4 class="title"><a href="">Success </a></h4>
              <p class="description">
              {{$about->success_description}}
              </p>
            </div>
          </div>

        </div>

      </div>
    </section>
    <!-- End Featured Services Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <h3>In an emergency? Need help now?</h3>
          <a class="cta-btn scrollto" href="#appointment">Book ARoom</a>
        </div>

      </div>
    </section><!-- End Cta Section -->


    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About Us</h2>
          <p>{{$about1->bio}}
          </p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-right">
            <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$about1->image}}" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3>{{$about1->nameOfHotel}}</h3>
            <p class="fst-italic">
            {{$about1->description_1}}
        </p>
            <ul>
              <li><i class="bi bi-check-circle"></i> We deliver memorable moments every day, everywhere, every time.</li>
              <li><i class="bi bi-check-circle"></i> We enjoy serving with our Yes I Can! spirit.</li>
              <li><i class="bi bi-check-circle"></i> We are many minds, with one mindset.</li>
            </ul>
            <p>
            {{$about1->description_2}}
            </p>
          </div>
        </div>

      </div>
    </section>
    <!-- End About Us Section -->

    <!-- ======= Counts Section ======= -->


    <!-- ======= Features Section ======= -->


    <!-- End Features Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Services</h2>
          <p>
            {{$services->bio}}
        </p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon"><i class="fa-solid fa-utensils"></i></div>
            <h4 class="title"><a href=""> restaurants and cafés</a></h4>
            <p class="description">
                {{$services->restaurants_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon"><i class="fa-solid fa-person-booth"></i></div>
            <h4 class="title"><a href="">Room Service</a></h4>
            <p class="description">
                {{$services->RoomService_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon"><i class="fa-solid fa-car"></i></i></i></div>
            <h4 class="title"><a href="">Parking</a></h4>
            <p class="description">
                {{$services->parking_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon"><i class="fa-solid fa-business-time"></i></div>
            <h4 class="title"><a href="">Business Centre</a></h4>
            <p class="description">
                {{$services->BusinessCenter_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon"><i class="fa-solid fa-cart-plus"></i></div>
            <h4 class="title"><a href="">Free Shuttle Service</a></h4>
            <p class="description">
            {{$services->FreeShuttleService_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon"><i class="fa-solid fa-wifi"></i></i></i></div>
            <h4 class="title"><a href="">Internet Access</a></h4>
            <p class="description">
            {{$services->InternetAcess_description}}
          </div>
        </div>

      </div>
    </section>
    <!-- End Services Section -->

    <!-- ======= Appointment Section ======= -->
    <section id="appointment" class="appointment section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Book Aroom</h2>
        </div>

        <form action="{{url('admin/book/create')}}" method="POST" >
            @csrf
            @method('GET')


           <div class="row">
            <div class="col-md-4 form-group">
              <span >Check in date</span>
              <input name="d1" type="date" id="datepicker" placeholder="ddddd" class="form-control" style="width:65% ;display: inline-block;margin-left: 18px;">

            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
               <span >Check out date</span>
              <input name="d2" type="date" id="datepicker" placeholder="ddddd" class="form-control" style="width:62% ;display: inline-block;margin-left: 16px;">
            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
              <input name="name" type="text" class="form-control"  id="phone" placeholder="Your Name" required>
            </div>
          </div>




          <div class="row">
            <div class="col-md-4 form-group mt-3">
               <select name="adult" id="department" class="form-select">
                <option value="">Adult</option>
                <option value="1"> 1</option>
                <option value="2"> 2</option>
                <option value="3"> 3</option>
              </select>
            </div>
            <div class="col-md-4 form-group mt-3">
              <select name="child" id="department" class="form-select">
                <option value="">children</option>
                <option value="0"> 0</option>
                <option value="1"> 1</option>
                <option value="2"> 2</option>
                <option value="3"> 3</option>
              </select>
            </div>
            <div class="col-md-4 form-group mt-3">
              <select name="room" id="doctor" class="form-select">
                <option value="">Room Type</option>
                <option value="Laxaries Rooms">Laxaries Rooms</option>
                <option value="Deluxe Room">Deluxe Room</option>
                <option value="Signature Room">Signature Room</option>
                <option value="Couple Room">Couple Room</option>

              </select>
            </div>

            <div class="col-md-4 form-group mt-3">
              <input name="CN" type="text" class="form-control"  id="phone" placeholder="Card Number" required>
           </div>
           <div class="col-md-4 form-group mt-3">
               <input name="MY" type="text" class="form-control"  id="phone" placeholder="MM/YY" required>
            </div>

            <div class="col-md-4 form-group mt-3">
          <input name="CV" type="text" class="form-control"  id="phone" placeholder="Cvv" required>
          </div>

          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="5" placeholder="Message (Optional)"></textarea>
          </div>
                <br>
                <br>
                <br>
                <br>

            <input class="btn btn-primary" style="margin-top:10px;" type="submit" value="Book A Room">


        </form>

      </div>
    </section>
    <!-- End Appointment Section -->

    <!-- ======= Departments Section ======= -->
    <section id="departments" class="departments">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Cafe&Resturent</h2>
        <p>
            The hotel's main restaurant offers a daily buffet breakfast and a menu of international special dishes for lunch and for dinner.
        </p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <ul class="nav nav-tabs flex-column">


              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tab-1">
                  <h4> {{$b->meal}}</h4>
                  <p>{{$b->description1}}</p>
                </a>
              </li>


              <li class="nav-item mt-2">
                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-2">
                  <h4>{{$l->meal}}</h4>
                  <p>{{$l->description1}}</p>
                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-3">
                  <h4>{{$d->meal}}</h4>
                  <p>{{$d->description1}}</p>
                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-4">
                  <h4>{{$c->meal}}</h4>
                  <p>{{$c->description1}}</p>
                </a>
              </li>
            </ul>
          </div>


          <div class="col-lg-8">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <h3>{{$b->meal}}</h3>
                <p class="fst-italic">{{$b->description1}}</p>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$b->image}}" alt="" class="img-fluid">
                <p>
                    {{$b->description2}}
                </p>
              </div>


              <div class="tab-pane" id="tab-2">
                <h3>{{$l->meal}}</h3>
                <p class="fst-italic">{{$l->description1}}</p>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$l->image}}" alt="" class="img-fluid">
                <p>
                    {{$l->description2}}
                </p>
              </div>

              <div class="tab-pane" id="tab-3">
                <h3>{{$d->meal}}</h3>
                <p class="fst-italic">{{$d->description1}}</p>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$d->image}}" alt="" class="img-fluid">
                <p>
                {{$d->description2}}
                    <!-- Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p> -->
              </div>


              <div class="tab-pane" id="tab-4">
                <h3>{{$c->meal}}</h3>
                <p class="fst-italic">{{$c->description1}}</p>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$c->image}}" alt="" class="img-fluid">
                <p>{{$c->description2}}</p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>
    <!-- End Departments Section -->

    <!-- ======= Testimonials Section ======= -->


    <!-- End Testimonials Section -->

    <!-- ======= Doctors Section ======= -->


    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Gallery</h2>
            <p>
                {{$gal->description}}
            </p>
        </div>

        <div class="gallery-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-1.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-1.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-2.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-2.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-3.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-3.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-4.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-4.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-5.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-5.jpg" class="img-fluid" alt=""></a></div>
            <!-- <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-6.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-6.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-7.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-7.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-8.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/gallery-8.jpg" class="img-fluid" alt=""></a></div> -->
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>
    <!-- End Gallery Section -->



    <!-- ======= Frequently Asked Questioins Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Frequently Asked Questioins</h2>
          <p>
            {{$fq->description}}
        </p>
        </div>

        <ul class="faq-list">

          <li>
            <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">{{$fq->q1}} <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq1" class="collapse" data-bs-parent=".faq-list">
              <p>
                {{$fq->a1}}
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">{{$fq->q2}} <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq2" class="collapse" data-bs-parent=".faq-list">
              <p>
                {{$fq->a2}}
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">{{$fq->q3}} <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq3" class="collapse" data-bs-parent=".faq-list">
              <p>
                {{$fq->a3}}
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">{{$fq->q4}} <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq4" class="collapse" data-bs-parent=".faq-list">
              <p>
                {{$fq->a4}}
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">{{$fq->q5}} <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq5" class="collapse" data-bs-parent=".faq-list">
              <p>
                {{$fq->a5}}
              </p>
            </div>
          </li>

        </ul>

      </div>
    </section>
    <!-- End Frequently Asked Questioins Section -->




    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact</h2>
          <p>
            {{$Contacts->description}}
        </p>
        </div>

      </div>

      <div>
        <iframe style="border:0; width: 100%; height: 350px;" src="{{$map1->url}}" frameborder="0" allowfullscreen></iframe>
      </div>

      <div class="container">

        <div class="row mt-5">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>Our Address</h3>
                  <p>{{$contacts1->address}}</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box mt-4">
                  <i class="bx bx-envelope"></i>
                  <h3>Email Us</h3>
                  <p>{{$contacts1->email}}<br>{{$contacts4->email}}</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box mt-4">
                  <i class="bx bx-phone-call"></i>
                  <h3>Call Us</h3>
                  <p>{{$contacts1->phone}}<br>{{$contacts4->phone}}</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
          <form action="{{url('text/create')}}" method="POST">
            @csrf
            @method('POST')
            <div class="col form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
            </div>
            <div class="col form-group mt-3">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
            </div>
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
            </div>
            <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="message" required></textarea>
            </div>
            <!-- <input type="submit"> -->
            <input class="btn btn-primary" style="margin-top:10px;" type="submit" value="Send ">
            </form>
          </div>

        </div>

      </div>
    </section>
    <!-- End Contact Section -->

  </main>
  <!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3><img src="http://127.0.0.1:8000/website_assets/assets/img/LOGO.jpg" ></h3>
              <p>
        {{$contacts1->address}}
        <br>
                <strong>Phone:</strong> {{$contacts1->phone}}<br>
                <strong>Email:</strong> {{$contacts1->email}}<br>
              </p>
              <div class="social-links mt-3">
                <a href="{{$Contacts_urls1->twitter}}" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="{{$Contacts_urls1->facebook}}" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="{{$Contacts_urls1->insta}}" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="{{$Contacts_urls1->skype}}" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="{{$Contacts_urls1->linkedin}}" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">


          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>{{$about1->nameOfHotel}}</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->
      </div>
    </div>
  </footer>

  <!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="http://127.0.0.1:8000/website_assets/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/vendor/aos/aos.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/vendor/php-email-form/validate.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/cafe/assets/vendor/aos/aos.js"></script>
  <script src="http://127.0.0.1:8000/website_assets/assets/cafe/assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->

  <script src="http://127.0.0.1:8000/website_assets/assets/cafe/assets/js/main.js"></script>

</body>

</html>
