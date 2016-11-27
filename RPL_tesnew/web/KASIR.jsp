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
                        <li><a href="kasir_pembayaran.jsp#about">Pembayaran</a>
                        </li>
                        <li>
                            <form action="./AkunTes" method="post">
                                <a href="./AkunTes" class="navbar-left fixed btn-group-justified breadcrumb" style="text-shadow: 2px 0px 2px #333;z-index: 99; padding: 15px; margin-left: 300px; background-color: #84bd17; border-radius: 20px; opacity: 1.0; position: absolute; width: 1000px">
                                    <input type="hidden" name="akun" value="logout">
                                    Logout
                                </a>
                            </form>
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

        <section class=" color-light"  >
            <div class="container" >


                <div class="row text-center" >
                    <div class="col-md-12" >
                        <h2> Apa yang anda ingin lakukan?</h2>
                        <div class="row">
                            <a href="Obat.jsp#about" class="btn" style="background-color: #fff;border-radius: 15px;box-shadow: 0px 2px 2px #848484" >
                                <img src="assets/Images/drugs.png" style="float: left; width: 200px;height: 200px;margin: 1em;">

                                <p style="float: left; width: 300px;height: 150px;margin: 1em; " class="text-left">
                                    <i style="font-size: 30px"><br>Obat</i><br>
                                    Mengecek Stok Obat <br>
                                    Menambah Daftar Obat <br>
                                    Hapus Daftar Obat<br>
                                </p>
                            </a>

                            <a href="kasir_pembayaran.jsp#about" class="btn" style=" background-color: #fff; border-radius: 15px ;box-shadow: 0px 2px 2px #848484">
                                <img src="assets/Images/PAYMENT.png" style="float: left; width: 200px;height: 200px;margin: 1em;margin-left: px">
                                <p style="float: left; width: 300px; height: 150px;margin: 1em; padding-right: 50px; " class="text-left">
                                    <i style="font-size: 30px"><br> Pembayaran </i><br>
                                    Pembayaran Resep dan Tagihan Pasien
                                </p>
                            </a>
                        </div>


                        <!--                        <div style="text-shadow: 0px 1px #686868; background-color: #fff; width: 300px; border-radius: 20px ; padding-top: 10px">
                                                    Tidak butuh menghabiskan banyak waktu mengantri</div>
                                                <div style="text-shadow: 0px 1px #686868; background-color: #fff; width: 300px; border-radius: 20px ; padding-top: 10px;float: right;">
                                                    Anda bisa mendapatkan mengatur waktu <br>dengan janji yang telah anda buat dengan dokter kami</div>-->



                    </div>
                </div>
            </div>
        </section>
        <!--End About Section-->



        <!-- WORK Flow Section -->  
        <section class="color-white " id="work-sec"  >
            <div class="container" >
                <h1 class="text-center">Help </h1>
                <div class="row text-center" >
                    <div class="col-md-8 col-md-offset-2 " >

                        <hr>
                        <i class="fa fa-check-square fa-5x text-info" style="font-size: 35px"> Lihat Stok Obat</i> <br><br><br><br><br>

                        <p class="text-left text-info">
                            1. Mengklik menu lihat stok obat	<br>
                            2. Menampilkan data obat dari database <br>
                            3. Klik tombol cetak data stok obat	<br>
                            4. Mencetak data stok obat <br>
                        </p>

                    </div>

                    <hr>
                </div>

                <div class="col text-center" >
                    <div class="col-md-8 col-md-offset-2 ">
                        <hr>
                        <i class="fa fa- fa-stack-overflow text-info" style="font-size: 35px"> Tambah Daftar Obat</i> <br><br><br><br><br>

                        <p class="text-left text-info">
                            1. Mengklik menu lihat stok obat	<br>
                            2. Menampilkan data obat dari database <br>
                            3. Klik tombol tambah data stok obat	<br>
                            4. Menampilkan form tambah stok obat<br>
                            5. Memasukkan data stok obat yang akan ditambah	<br>
                            6. Menyimpan data obat ke data base Obat<br>
                            7. Menampilkan dialog berhasil menambahkan obat<br>
                            8. Menampilkan halaman utama<br>


                        </p>

                    </div>



                </div>

                <div class="row text-center g-pad-bottom" >

                    <!--                    <div class="col-md-4">
                    
                                            <div class="work-div">   									 
                    
                                                <i class="fa fa-user fa-5x"></i>                   
                    
                    
                                                <h3>Daftar </h3>                   
                    
                    
                                            </div>	
                    
                                        </div>								-->

                    <!--                    <div class="col-md-4 ">
                    
                                            <div class="work-div">   									 
                    
                                                <i class="fa fa-angle-double-right fa-5x"></i>                   
                    
                    
                    
                                            </div>	
                    
                                        </div>	
                                        <div class="col-md-4 ">
                    
                                            <div class="work-div">   									 
                    
                                                <i class="fa fa-bell fa-5x"></i>                   
                    
                    
                                                <h3>Buat Janji</h3>                   
                    
                    
                                            </div>	
                    
                                        </div>			-->




                    </section>
                    <!--End WORK Flow  Section -->  
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

                    </body>
                    </html>
