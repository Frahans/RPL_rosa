<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->
        <title>Sistem Informasi Praktek Dokter</title>

        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLE CSS -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLE CSS -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body style="overflow-x: hidden">
        <%
            session = request.getSession(true);
            if (session.getAttribute("username")==null) {
                
                    response.sendRedirect("http://localhost:8090/RPL_Frans/Login.jsp#about");
                }
        %>

        <!--Header section  -->
        <div class="container" id="home">
            <div class="row text-center">
                <div class="col-md-12" >
                    <h1 class="head-main">  <img style="width: 200px" src="assets/Images/lgo.png" ></h1>
                    <h2 class="head-sub-main"> Sistem Informasi Praktek Dokter</h2>


                </div>


            </div>
        </div>
        <!--End Header section  -->

        <!-- Navigation -->
        <nav class="navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="HOME.jsp#about" style="">
                        <img  src="assets/Images/LOGO tok.png" style="width: 100px;"> 
                    </a>
                </div>
                <!-- Collect the nav links for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="PASIEN.jsp"><< Halaman Utama Pasien</a>
                        </li>
                        <li><a href="BuatJanji.jsp#about"> Janji</a>
                        </li>   
                        <li><a class="close">Akun</a>
                        </li>   
                        <li><a href="#work-sec">Help</a>
                        </li>   
                        <li>
                            <a href="Login.jsp#about" class="navbar-left fixed btn-group-justified breadcrumb" style="text-shadow: 2px 0px 2px #333;width: 1000px; z-index: 99; padding: 15px; margin-left: 300px; background-color: #84bd17; border-radius: 20px; opacity: 1.0; position: absolute; ">

                                Logout
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav> 
        <!--End Navigation -->

        <!--About Section-->
        <section class="color-white " id="about"  >
            <div class="container" >

                <div class="row text-center" >
                    <br><br><br>
                    <i class="fa fa-cog fa-5x">Pengaturan Akun</i>

                </div>


            </div>
        </section>

        <section class=" color-white"  >
            <div class="container" >


                <div class="col-md-3 text-center " style="background-color: #333; height: 573px; padding: 10px ; border-radius: 25px; ">
                    <h2 style="color: lightgray">Menu</h2>
                    <hr>
                    <div class="nav-stacked  " style="text-decoration: none; ">
                        <ul class="nav navbar-nav" style="background-color: inherit">
                            <li class="btn-info" style="width: 100%; "><a href="#about" style="text-shadow: 0px 2px 2px 2px #333 ">Setel Ulang Kata Sandi</a></li>
                            <li class="btn" style="width: 100%"><a href="#about">Jejak Periksa</a></li>
                        </ul>
                    </div>




                </div>
                <div class="col-sm-1 text-left" style="background-color: #fff; border-top-right-radius: 10px ">
                </div>
                
                <div class="col-md-8 text-left" style="background-color: lightgrey; border-radius: 25px; height: 570px ">
                    <div>
                        
                        <form action="" method="post" >
                                <br>
                                <div class="text-center">
                                <i class="fa fa-undo fa-2x" style="margin-left: 10px"><strong> Setel Ulang Kata Sandi</strong></i>
                                </div>
                                <hr>
                                <div style="margin-left: 75px">
                                <label id="icon" for="name" style="width: 200px;"><i class="icon-envelope " >Kata Sandi Baru*</i></label>
                                <input type="text" name="name" id="name" placeholder="8 karakter" required/><br>

                                <label id="icon" for="name" style="width: 200px"><i class="icon-shield">Ketik Ulang*</i></label>
                                <input type="password" name="name" id="name" placeholder="ulangi lagi" required/>
                                </div>
                                    <button class="btn-default center-block " style="margin-top: 100px;width: 200px; border-radius: 10px;background-color: orange;letter-spacing: 3px; height:  50px; font-size: 10px; color: white"><b>Setel Ulang</b></button>
                                
                            </form>
                    </div>
                </div>
            </div>
        </section>
        <!--End About Section-->

        <!-- Contact Section -->  
        <section class="color-light " id="contact-sec"  >
            <div class="container" >      
                <div class="row text-center" >
                    <div class="col-md-8 col-md-offset-2 ">
                        <h2>Temukan Kami disini!</h2>
                        <h4>
                            <strong>
                                Kritik dan Saran? dapat dikirim melalui form di bawah ini.
                            </strong>
                        </h4>
                    </div>

                </div>

                <div class="row" >
                    <div class="col-md-5 contact-cls" >
                        <h3>Alamat Fisik</h3>
                        <div >
                            <span><i class="fa fa-home"> </i> Alamat: Kalasan, Sleman, Yogyakarta </span>
                            <br />
                            <span><i class="fa fa-phone"> </i> Telepon: 0813-1234-4321</span>


                        </div>


                    </div>
                    <div class="col-md-7">

                        <form>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" required="required" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" required="required" placeholder="Email address">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <textarea name="message" id="message" required="required" class="form-control" rows="3"  placeholder="Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-default">Submit Request</button>
                                    </div>
                                </div>
                            </div><a></a>
                        </form>
                        <br />
                        <div id="social-icon">
                            <a href="#"><i class="fa fa-facebook fa-2x"></i></a>
                            <a href="#"><i class="fa fa-twitter fa-2x"></i></a>
                            <a href="#"><i class="fa fa-linkedin fa-2x"></i></a>
                            <a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
                            <a href="#"><i class="fa fa-pinterest fa-2x"></i></a>					
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--End Contact Section -->

        <!--Map Section -->

        <!--End Map Section -->
        <!--footer Section -->
        <div  class="for-full-back "  id="footer" >


            2014 www.yourdomain.com | All Right Reserved

        </div>
        <!--End footer Section -->
        <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
        <!-- CORE JQUERY  -->
        <script src="assets/plugins/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP CORE SCRIPT   -->
        <script src="assets/plugins/bootstrap.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>
        <script>
            $input = $("#my-input");
            $input.datepicker();
            $input.data('datepicker').hide = function() {
            };
            $input.datepicker('show');
        </script>
    </body>
</html>
