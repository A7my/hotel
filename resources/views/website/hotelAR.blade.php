<!DOCTYPE html>
<html lang="ar" dir="rtl">

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
  <link href="http://127.0.0.1:8000/website_assets/assets/css/stylear.css" rel="stylesheet">

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
        <i class="bi bi-clock"></i> الاثنين - السبت, من الثامنه صباحا حتى العاشره مساءً
      </div>
      <div class="d-flex align-items-center flex-row-reverse">
        <i class="bi bi-phone"></i> اتصل بنا على {{$contacts1->phone}}
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="{{url('hotel')}}" class="logo ms-auto"><img src="http://127.0.0.1:8000/website_assets/assets/img/LOGO.jpg" alt=""></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto fs-5" href="#hero">الرئيسية</a></li>
          <li><a class="nav-link scrollto fs-5" href="#about">من نحن</a></li>
          <li><a class="nav-link scrollto fs-5" href="#services">خدماتنا</a></li>
          <li><a class="nav-link scrollto fs-5" href="#departments">المطعم</a></li>
          <li><a class="nav-link scrollto fs-5" href="#doctors">فريق العمل </a></li>
          <li class="dropdown"><a href="#"><span class="fs-5 ms-2">الفنادق</span> <i class="bi bi-chevron-down"></i></a>
            <ul>

                  <li><a href="{{url('hotel1')}}">فندق 1 </a></li>
                  <li><a href="{{url('hotel2')}}">فندق 2 </a></li>
                  <li><a href="{{url('hotel3')}}">فندق 3 </a></li>
                  <li><a href="{{url('hotel4')}}">فندق 4 </a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto fs-5" href="#contact">اتصال</a></li>
          <li class="dropdown"><a href="#"><span class="fs-5 ms-2 color"> اللغه  <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 512 512" strok="#626262"><title>ionicons-v5-l</title><line x1="48" y1="112" x2="336" y2="112" style="fill:none;stroke:#626262;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><line x1="192" y1="64" x2="192" y2="112" style="fill:none;stroke:#626262;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><polyline points="272 448 368 224 464 448" style="fill:none;stroke:#626262;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><line x1="301.5" y1="384" x2="434.5" y2="384" style="fill:none;stroke:#626262;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><path d="M281.3,112S257,206,199,277,80,384,80,384" style="fill:none;stroke:#626262;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/><path d="M256,336s-35-27-72-75-56-85-56-85" style="fill:none;stroke:#626262;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"/></svg></span> <i class="bi bi-chevron-down"></i></a>
            <ul>

                <li><a href="{{url('hotel')}}">الانجليزية</a></li>
              <li><a href="{{url('hotelAR')}}">العربية</a></li>
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">احجز</span> غرفة</a>
    </div>
  </header><!-- End Header -->




  <!-- ======= Hero Section ======= -->
<section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(http://127.0.0.1:8000/website_assets/assets/img/slide/slidy.jpg);margin-right:0;">
          <div class="container">
            <h2>مرحبًا بكم في مجموعة فنادق <span>{{$main->hotel_name}}</span></h2>
            <p>
                {{$main->description}}
            </p>
            <a href="#about" class="btn-get-started scrollto">المزيد</a>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(http://127.0.0.1:8000/website_assets/assets/img/slide/slide-2.jpg);margin-right:0;">
          <div class="container">
            <h2>خدماتنا</h2>
            <p>الخدمة التي نتوقعها باستمرار ونستجيب لها, رغبات واحتياجات ضيوفنا المعلنة وغير المعلنة.</p>
            <a href="#about" class="btn-get-started scrollto">المزيد</a>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(http://127.0.0.1:8000/website_assets/assets/img/slide/slide-3.jpg);margin-right:0;">
          <div class="container">
            <h2>النجاح</h2>
    <p>النجاح نحن ملتزمون بالنجاح الجماعي لفندقنا.</p>
            <a href="#about" class="btn-get-started scrollto">المزيد</a>
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
</section>
<!-- End Hero -->










  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bi bi-bookmark-check-fill"></i></div>
              <h4 class="title"><a href="">التميز </a></h4>
              <p class="description">
                {{$about->Excellence_description}}
              </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="fa-brands fa-buffer"></i></div>
              <h4 class="title"><a href="">الخدمة</a></h4>
              <p class="description">
              {{$about->Service_description}}
            </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="fa-sharp fa-solid fa-people-group"></i></div>
              <h4 class="title"><a href="">العمل الجماعي</a></h4>
              <p class="description">
              {{$about->Teamwork_description}}
            </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="fa-solid fa-thumbs-up"></i></div>
              <h4 class="title"><a href="">النجاح </a></h4>
              <p class="description">
              {{$about->success_description}}
            </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <h3> بحاجة الى مساعدة الآن؟</h3>
          <a class="cta-btn scrollto" href="#appointment">إحجز غرفة</a>
        </div>

      </div>
    </section>
    <!-- End Cta Section -->


    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>من نحن</h2>
            <p>
                {{$about->bio}}
            </p>
        </div>

        <div class="d-flex flex-row-reverse mod">
          <div class="col-lg-6" data-aos="fade-right">
            <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$about->image}}" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3>مجموعة فنادق العازمي ريت.</h3>
            <p class="fst-italic">
                {{$about->description_1}}
            </p>
            <ul>
              <li> <i class="bi bi-check-circle"></i>نقدم لحظات لا تنسى كل يوم ، في كل مكان ، في كل مرة. </li>
              <li>  <i class="bi bi-check-circle"></i>نحن نستمتع بخدماتكم </li>
              <li>  <i class="bi bi-check-circle"></i>نا لا أعمل على الإطلاق باستثناء الحصول على بعض المزايا منه.ألم شديد في التراجع </li>
            </ul>

          </div>
        </div>

      </div>
    </section>
    <!-- End About Us Section -->



    <!-- ======= Counts Section ======= -->


    <!-- End Counts Section -->


    <!-- ======= Features Section ======= -->
    <section id="hero1" class="d-flex align-items-center">
      <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100">
        <div class="row">
          <div class="col-lg-8">
            <h1>مرحبا بك  <span>
              {{$feat->hotel_name}}  </span></h1>



          </div>
          <div class="col-lg-4 d-flex align-items-center justify-content-center position-relative" data-aos="zoom-in" data-aos-delay="200">
            <a href="{{$feat->link}}" class="glightbox play-btn"></a>
          </div>

        </div>
      </div>
    </section>
    <!-- ======= Services Section ======= -->







    <section id="services" class="services services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>خدمات</h2>
          <p>
            {{$services->bio}}
        </p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon"><i class="fa-solid fa-utensils"></i></div>
            <h4 class="title"><a href="">مطاعم وكافيهات</a></h4>
            <p class="description">
                {{$services->restaurants_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon"><i class="fa-solid fa-person-booth"></i></div>
            <h4 class="title"><a href="">خدمة الغرف</a></h4>
            <p class="description">
                {{$services->RoomService_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon"><i class="fa-solid fa-car"></i></div>
            <h4 class="title"><a href="">مواقف السيارات</a></h4>
            <p class="description">
                {{$services->parking_description}}
            </p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon"><i class="fa-solid fa-business-time"></i></div>
            <h4 class="title"><a href="">مركز الأعمال</a></h4>
            <p class="description">
                {{$services->BusinessCenter_description}}
            </p>

          </div>
          <div class="col-lg-4 col-md-6 icon-box divHover" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon"><i class="fa-solid fa-cart-plus"></i></div>
            <h4 class="title"><a href="">خدمة نقل  مجانية</a></h4>
            <p class="description">
                {{$services->FreeShuttleService_description}}
            </p>

          </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon"><i class="fa-solid fa-wifi"></i></div>
            <h4 class="title"><a href="">خدمة إنترنت</a></h4>
            <p class="description">
                {{$services->InternetAcess_description}}
            </p>
          </div>
        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Appointment Section ======= -->
    <section id="appointment" class="appointment section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>إحجز غرفة</h2>
        </div>

        <form action="forms/appointment.php" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
          <div class="row">
            <div class="col-md-4 form-group">
              <span >تاريخ الدخول</span>
              <input type="date" id="datepicker" placeholder="ddddd" class="form-control" style="width:65% ;display: inline-block;margin-left: 18px;">
            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
              <span >تاريخ الخروج</span>
              <input type="date" id="datepicker" placeholder="ddddd" class="form-control" style="width:62% ;display: inline-block;margin-left: 16px;">
            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
              <input type="tel" class="form-control" name="phone" id="phone" placeholder="الاسم بالكامل" required>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <select name="department" id="department" class="form-select">
                <option value="">البالغين</option>
                <option value="Department 1"> 1</option>
                <option value="Department 2"> 2</option>
                <option value="Department 3"> 3</option>
              </select>
            </div>
            <div class="col-md-4 form-group mt-3">
              <select name="department" id="department" class="form-select">
                <option value=""> الأطفال</option>
                <option value="Department 1">1	</option>
                <option value="Department 2"> ٢</option>
                <option value="Department 3"> ٣	</option>
              </select>
            </div>
            <div class="col-md-4 form-group mt-3">
              <select name="doctor" id="doctor" class="form-select">
                <option value="">نوع الغرفة </option>
                <option value="Doctor 1">غرف فاخرة</option>
                <option value="Doctor 2">غرفة ديلوكس</option>
                <option value="Doctor 3">غرفة التوقيع</option>
                <option value="Doctor 4">غرف ثنائية</option>

              </select>
            </div>

            <div class="col-md-4 form-group mt-3">
              <input type="text" class="form-control" name="phone" id="phone" placeholder="رقم الكارت " required>
           </div>
           <div class="col-md-4 form-group mt-3">
            <input type="text" class="form-control" name="phone" id="phone" placeholder="تاريخ انتهاء البطاقة " required>
         </div>
         <div class="col-md-4 form-group mt-3">
          <input type="text" class="form-control" name="phone" id="phone" placeholder="الرمز السري" required>
       </div>

          </div>

          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="5" placeholder="الرسالة (اختياري)"></textarea>
          </div>
          <div class="my-3">
            <div class="loading">جار التحميل</div>
            <div class="error-message"></div>
            <div class="sent-message">تم إرسال طلب حجز  بنجاح. شكرًا لك!</div>
          </div>
          <div class="text-center"><button type="submit">إحجز غرفة</button></div>
        </form>

      </div>
    </section><!-- End Appointment Section -->

    <!-- ======= Departments Section ======= -->
    <section id="departments" class="departments">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>المطعم والكافيه
          </h2>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <ul class="nav nav-tabs flex-column mod2">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tab-1">
                  <h4>الإفطار</h4>
                  <p>{{$meal1->description1}}</p>
                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-2">
                  <h4>الغذاء</h4>
                  <p>{{$meal2->description1}}</p>
                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-3">
                  <h4>العشاء</h4>
                  <p>{{$meal3->description1}}</p>

                </a>
              </li>
              <li class="nav-item mt-2">
                <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-4">
                  <h4>الكافية</h4>
                  <p>{{$meal4->description1}}</p>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-lg-8">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <h3> الإفطار</h3>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$meal1->image}}" alt="" class="img-fluid">
                <p>{{$meal1->description2}}</p>
            </div>
              <div class="tab-pane" id="tab-2">
                <h3> الغذاء</h3>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$meal2->image}}" alt="" class="img-fluid">
                <p>{{$meal2->description2}}</p>

              </div>
              <div class="tab-pane" id="tab-3">
                <h3> العشاء</h3>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$meal3->image}}" alt="" class="img-fluid">
                <p>{{$meal3->description2}}</p>
              </div>
              <div class="tab-pane" id="tab-4">
                <h3> الكافية</h3>
                <img src="http://127.0.0.1:8000/website_assets/assets/img/{{$meal4->image}}" alt="" class="img-fluid">
                <p>{{$meal4->description2}}</p>
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
    <section id="doctors" class="doctors section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>فريق العمل </h2>
          <p>
        {{$teamDesc->description}}
        </p>
        </div>

        <div class="row">
            @foreach($team as $t)

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="100">
              <div class="member-img">
                <img src="http://127.0.0.1:8000/website_assets/assets/img/doctors/{{$t->image}}" class="img-fluid" alt="">
                <div class="social">
                  <a href="{{$t->Twitter_url}}"><i class="bi bi-twitter"></i></a>
                  <a href="{{$t->Facebook_url}}"><i class="bi bi-facebook"></i></a>
                  <a href="{{$t->Insta_url}}"><i class="bi bi-instagram"></i></a>
                  <a href="{{$t->LinkedIn_url}}"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
              <h4>{{$t->name}}</h4>
                <span>{{$t->job}}</span>
              </div>
            </div>
          </div>






          @endforeach
        </div>

      </div>
    </section><!-- End Doctors Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>المعرض</h2>

          <p>
            {{$gal->description}}
          </p>
        </div>

        <div class="gallery-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/img1.jpg"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/img1.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/img2"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/img2.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/img3"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/img3.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/img4"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/img4.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="gallery-lightbox" href="http://127.0.0.1:8000/website_assets/assets/img/gallery/img5"><img src="http://127.0.0.1:8000/website_assets/assets/img/gallery/img5.jpg" class="img-fluid" alt=""></a></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>
    <!-- End Gallery Section -->

    <!-- ======= Pricing Section ======= -->

    <!-- ======= Frequently Asked Questioins Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>الاسئله المتكرره</h2>
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
          <h2>تواصل معنا</h2>
          <p>
            {{$contacts1->description}}
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
                  <h3>العنوان</h3>
                  <p>{{$contacts1->address}}</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box mt-4">
                  <i class="bx bx-envelope"></i>
                  <h3>راسلنا</h3>
                  <p>{{$contacts1->email}}<br>{{$contacts4->email}}</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box mt-4">
                  <i class="bx bx-phone-call"></i>
                  <h3>اتصل بنا </h3>
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
                <input type="text" name="name" class="form-control" id="name" placeholder="الاســــم" required>
            </div>
            <div class="col form-group mt-3">
                <input type="email" class="form-control" name="email" id="email" placeholder="عنــــوان البريــد الالكــتروني" required>
            </div>
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="عنــوان الرســـالة" required>
            </div>
            <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="الرســـالة" required></textarea>
            </div>
            <!-- <input type="submit"> -->
            <input class="btn btn-primary" style="margin-top:10px;" type="submit" value="ارســـــال ">
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3><img src="http://127.0.0.1:8000/website_assets/assets/img/LOGO.jpg" ></h3>
              <p>
                لذين سأقرأ منه <br>
                لذين سأقرأ منه<br><br>
                <strong>الهاتف:</strong> {{$contacts1->phone}}<br>
                <strong>البريد الالكترون:</strong>{{$contacts4->email}}<br>
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
            <h4>روابط مفيده</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">الاساسيه</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">حولنا</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">الخدمات</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">قسم الخدمات</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">سياسة الخصوصية</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>خدماتنا</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">تصميم المواقع</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">تطوير الشبكة</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">ادارة المنتج</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">تسويق</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">مصمم الجرافيك</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; جميع <strong><span>العزمي ريت </span></strong>. الحقوق محفوظة
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
