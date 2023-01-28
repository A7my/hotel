
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="{{URL::asset('dashboard_assets/assets/img/apple-icon.png')}}">
  <link rel="icon" type="image/png" href="{{URL::asset('dashboard_assets/assets/img/favicon.png')}}">
  <title>
    Soft UI Dashboard by Creative Tim
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="{{URL::asset('dashboard_assets/assets/css/nucleo-icons.css')}}" rel="stylesheet" />
  <link href="{{URL::asset('dashboard_assets/assets/css/nucleo-svg.css')}}" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="{{URL::asset('dashboard_assets/assets/css/nucleo-svg.css')}}" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="{{URL::asset('dashboard_assets/assets/css/soft-ui-dashboard.css?v=1.0.5')}}" rel="stylesheet" />
</head>

<body class="">

  <main class="main-content  mt-0" style="position:absolute;top:-10px;width:960px;left:400px"  >
    <section >
      <div class="page-header min-vh-75" >
        <div class="container">
          <div class="row">
            <div class="col-xl-4 col-lg-5 col-md-6 d-flex flex-column mx-auto">
              <div class="card card-plain mt-8">
                <div class="card-header pb-0 text-left bg-transparent">
                  <h3 class="font-weight-bolder text-info text-gradient">Welcome back, Admin</h3>
                  <p class="mb-0">Enter your email and password to sign in dashboard control</p>
                </div>
                <div class="card-body">




                  <form role="form" method="POST" action="{{ route('login') }}">
                    @csrf
                    <label>Email</label>
                    <div class="mb-3">
                      <input type="email" class="form-control" name="email" :value="old('email')" required autofocus placeholder="Email" aria-label="Email" aria-describedby="email-addon">
                    </div>
                    <label>Password</label>
                    <div class="mb-3">
                      <input name="password" required autocomplete="current-password" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="password-addon">
                    </div>
                    <div class="form-check form-switch">
                      <input class="form-check-input" type="checkbox" id="rememberMe" checked="">
                      <label class="form-check-label" for="rememberMe">Remember me</label>
                    </div>
                    <div class="text-center">
                        <input type="submit" value="Sign in" class="btn bg-gradient-info w-100 mt-4 mb-0">
                      <!-- <button type="submit" >Sign in</button> -->
                    </div>
                  </form>








                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="oblique position-absolute top-0 h-100 d-md-block d-none me-n8">
                <div class="oblique-image bg-cover position-absolute fixed-top ms-auto h-100 z-index-0 ms-n6" style="background-image:url('../assets/img/curved-images/curved6.jpg')"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  <!-- -------- START FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->

  <!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
  <!--   Core JS Files   -->
  <script src="{{URL::asset('dashboard_assets/assets/js/core/popper.min.js')}}"></script>
  <script src="{{URL::asset('dashboard_assets/assets/js/core/bootstrap.min.js')}}"></script>
  <script src="{{URL::asset('dashboard_assets/assets/js/plugins/perfect-scrollbar.min.js')}}"></script>
  <script src="{{URL::asset('dashboard_assets/assets/js/plugins/smooth-scrollbar.min.js')}}"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="{{URL::asset('dashboard_assets/assets/js/soft-ui-dashboard.min.js?v=1.0.5')}}"></script>
</body>

</html>
