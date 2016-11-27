<%@page import="java.sql.*"%>

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
        <title>Login</title>
        <!--REQUIRED STYLE SHEETS-->
        <!-- BOOTSTRAP CORE STYLE CSS -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/form.css" rel="stylesheet" />
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
                        <li><a href="#home"></a>
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
                </div>

            </div>
        </section>

        <section class="color-light"  >
            <div class="container" >


                <div class="row text-left" >
                    <div  >

                        <div class="form-control" style="height: 700px ; padding-left: 100px;padding-right: 100px; background-color: #c1c1c1; width: 1200px">

                            <form action="./AkunTes" method="post" >
                                <input type="hidden"  name="akun" value="login">
                                <br>
                                <i class="fa fa-sign-in fa-5x text-justify" style="margin-left: 320px"><strong>Login</strong></i>

                                <hr>
                                <label id="icon" for="name" style="width: 200px;"><i class="icon-envelope " >Email</i></label>
                                <input type="text" name="username" id="name" placeholder="alamatmu@email.com" required/><br>

                                <label id="icon" for="name" style="width: 200px"><i class="icon-shield">Kata Sandi</i></label>
                                <input type="password" name="password" id="name" placeholder="Kata Sandi" required/>

                                <hr>

                                <button class="breadcrumb center-block " style="width: 500px; background-color: 84bd17;letter-spacing: 5px; height:  120px; font-size: 30px; color: white"><b>Login</b></button>

                                <hr>
                            </form>
                            <h5 class="text-center">Belum punya akun?</h5>
                            <br>
                            <a href="Daftar.jsp">
                                <button class="breadcrumb center-block " style="width: 500px; background-color: 84bd17;letter-spacing: 5px; height:  120px; font-size: 30px; color: white"><b>Daftar</b></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End About Section-->



        <!-- WORK Flow Section -->  
        <section class="color-white " id="work-sec"  >
            <div class="container" >





            </div>
        </section>
        <!--End WORK Flow  Section -->  
        <!-- Contact Section -->  
        <section class="color-light " id="contact-sec"  >
            <div class="container" >      
                <div class="row text-center" >
                    <div class="col-md-8 col-md-offset-2 ">
                        <h2>Temukan Kami Disini</h2>
                        <h4>
                            <strong>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
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
                                        <input type="text" class="form-control" required="required" placeholder="Email address"><br>
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
                            </div>
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
        <section class="color-light " id="map-sec"  >
            <iframe class="cnt"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2999841.293321206!2d-75.80920404999999!3d42.75594204999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew+York!5e0!3m2!1sen!2s!4v1395313088825"></iframe>


        </section>
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

    </body>
</html>
