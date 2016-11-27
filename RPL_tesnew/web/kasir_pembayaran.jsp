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
            if (session.getAttribute("username") == null) {

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
                        <li><a href="#home"></a>
                        </li>
                        <li><a href="#about">Halaman Utama Kasir</a>
                        </li>                    

                        <li><a href="Obat.jsp#about">Obat</a>
                        </li>
                        <li><a href="kasir_pembayaran.jsp#about" class="close">Pembayaran</a>
                        </li>
                        <li>
                            <a href="Login.jsp#about" class="navbar-left fixed btn-group-justified breadcrumb" style="text-shadow: 2px 0px 2px #333;z-index: 99; padding: 15px; margin-left: 300px; background-color: #84bd17; border-radius: 20px; opacity: 1.0; position: absolute; width: 1000px">
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
                    <i class="fa fa-money fa-5x"> Pembayaran Pasien</i>

                </div>


            </div>
        </section>

        <section class=" color-dark"  >
            <div class="container" style="background-color: white; border-radius: 15px; padding-bottom: 50px; box-shadow: 0px 3px 3px 3px #333;">


                <div class="col-md-3 text-center " style="background-color: lightblue; height: 553px; margin-top: 10px; padding: 10px ; border-top-left-radius: 10px; box-shadow: inset 0px 0px 20px 0px #333 ">
                    <br><br><br>
                    <div class="btn-group-vertical">
                        <button class="btn">
                            <i class="fa fa-repeat fa-3x" style=""></i>
                            <h4>Refresh Table</h4>
                        </button>

                        <button class="btn">
                            <i class="fa fa-eraser fa-3x" style=""></i>
                            <h4>Clear Table</h4>
                        </button>
                    </div>


                </div>
                <div class="col-xs-1">

                </div>

                <div class="col-md-8 text-left" style="background-color: lightblue; border-top-right-radius: 10px; margin-top: 10px; ">
                    <table class="table-hover"  style="background-color: inherit; color: black; margin-top: 10px">
                        <tr class="text-center" style="background-color: lightseagreen; font-weight: bold" >
                            <td style="height: 30px;width: 100px"> No. </td> <td>Kode Pasien</td> <td> Jam Periksa</td> <td style="padding: 0px 200px 0px 200px"> Nama </td> <td class="text-center"> Proses</td>
                        </tr>

                        <tr class="text-center">
                            <td> 1 </td> <td>12345</td> <td> 7 AM</td> <td>Bastian Pramuditya</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                        
                        </tr>
                        <tr class="text-center">
                            <td> 2 </td> <td>12345</td> <td> 8 AM</td> <td>Elisabeth Kusuma Adi</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                               
                        </tr>
                        <tr class="text-center">
                            <td> 3 </td> <td>12345</td> <td> 9 AM</td> <td>Sekar Mirah</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                               
                        </tr>
                        <tr class="text-center">
                            <td> 4 </td> <td>12345</td> <td> 10 AM</td> <td>Kasih Handoyo</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                               
                        </tr>
                        <tr class="text-center">
                            <td> 5 </td> <td>12345</td> <td> 11 AM</td>  <td>Indra Kusuma</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                              
                        </tr>
                        <tr class="text-center">
                            <td> 6 </td>  <td>12345</td> <td> 12 AM</td> <td>Basuki Tjahaya Purnama</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                              
                        </tr>
                        <tr class="text-center">
                            <td> 7 </td>  <td>12345</td> <td> 1 PM</td> <td>Guido Tanpa Pamrih</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                              
                        </tr>
                        <tr class="text-center">
                            <td> 8 </td>  <td>12345</td> <td> 2 PM</td>  <td>Leo Krisnoto</td> <td><button class=" btn" style="padding: 10px"> Proses </button></td>                                             
                        </tr>
                        <tr class="text-center">
                            <td> 9 </td> <td>12345</td> <td> 3 PM</td> <td> Imam Dwicahya</td><td> <button class=" btn" style="padding: 10px"> Proses </button></td>                                                
                        </tr>
                        <tr class="text-center">
                            <td> 10 </td> <td>12345</td> <td> 4 PM</td> <td>Bagas Sabrang Sagara </td><td> <button class=" btn" style="padding: 10px"> Proses </button></td>                                                
                        </tr>
                        <tr class="text-center">
                            <td> 11 </td> <td>12345</td> <td> 5 PM</td> <td> Meysi Pramita Br Sembiring</td><td> <button class=" btn" style="padding: 10px"> Proses </button></td>                                                
                        </tr>
                        <tr class="text-center">
                            <td> 12 </td> <td>12345</td> <td> 6 PM</td> <td> I Wayan Sazwidka Okta Mataram</td><td> <button class=" btn" style="padding: 10px"> Proses </button></td>                                               
                        </tr >

                    </table>
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
