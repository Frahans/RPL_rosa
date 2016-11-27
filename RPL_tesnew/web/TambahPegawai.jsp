<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <style>
            .dropbtn {
                background-color: inherit;
                color: white;
                padding: 16px;
                border: none;
                cursor: pointer;
                min-width: 160px;
            }
            .dropdown {
                position: relative;
                display: inline-block;
            }
            .dropdown-content {
                text-align: center;
                display: none;
                position: absolute;
                background-color: #496889;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);

            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;

            }

            .dropdown-content a:hover {
                background-color: #333;



            }

            .dropdown:hover .dropdown-content {
                display: block;

            }

            .dropdown:hover .dropbtn {
                background-color: #496889;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }
        </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->
        <title>Tambah Data Pegawai</title>
        <!--REQUIRED STYLE SHEETS-->
        <!-- BOOTSTRAP CORE STYLE CSS -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />

        <link href="assets/css/default.css" rel="stylesheet" />
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
                        <li><a href="#about"> Halaman Utama Pemilik</a>
                        </li> 
                        <li>
                            <div class="dropdown">
                                <button class="dropbtn">Laporan</button>
                                <div class="dropdown-content" style="border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                    <a href="#"> Keuangan </a>
                                    <a href="#"> Kunjungan Pasien </a>
                                    <a href="#"> Pola Penyakit </a>
                                </div>
                            </div>
                        </li>

                        <li><a href="#about">Tambah Pegawai</a>
                        </li>
                        <li>
                            <a href="Login.jsp" class="navbar-left fixed btn-group-justified breadcrumb" style="text-shadow: 2px 0px 2px #333;z-index: 99; padding: 15px; margin-left: 250px; background-color: #398439; border-radius: 20px; opacity: 1.0;">
                                Logout</a>
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


                <div class="row text-left" >
                    <div>
                        <h1 class="text-center"> TAMBAH DATA PEGAWAI</h1>


                        <div class="form-control" style="height: 1000px ; padding-left: 100px;padding-right: 100px; background-color: #c1c1c1; width: 1200px">

                            <form action="" method="post" class="register">

                                <fieldset class="row1">
                                    <legend>Akun
                                    </legend>
                                    <p>
                                        <label>Email *
                                        </label>
                                        <input type="text" placeholder="abc@mail.com" required/>
                                        <label style="margin-right: 10px">Ulangi email *
                                        </label>
                                        <input type="text" placeholder="abc@mail.com" required/>
                                    </p>
                                    <p>
                                        <label>Kata Sandi*
                                        </label>
                                        <input type="password" placeholder="min 8 karakter" required/>
                                        <label>Ulangi Kata Sandi*
                                        </label>
                                        <input type="password" placeholder="min 8 karakter" required/>
                                        <label class="obinfo">* Harus Diisi
                                        </label>
                                    </p>
                                </fieldset>
                                <fieldset class="row2" style="height: 250px">
                                    <legend>Identitas Diri
                                    </legend>
                                    <p>
                                        <label>Nama *
                                        </label>
                                        <input type="text" class="long" placeholder="John Smith" required/>
                                    </p>
                                    <p>
                                        <label style="margin-right: 15px">Tanggal Lahir *
                                        </label>
                                        <select class="date">
                                            <option value="1">01
                                            </option>
                                            <option value="2">02
                                            </option>
                                            <option value="3">03
                                            </option>
                                            <option value="4">04
                                            </option>
                                            <option value="5">05
                                            </option>
                                            <option value="6">06
                                            </option>
                                            <option value="7">07
                                            </option>
                                            <option value="8">08
                                            </option>
                                            <option value="9">09
                                            </option>
                                            <option value="10">10
                                            </option>
                                            <option value="11">11
                                            </option>
                                            <option value="12">12
                                            </option>
                                            <option value="13">13
                                            </option>
                                            <option value="14">14
                                            </option>
                                            <option value="15">15
                                            </option>
                                            <option value="16">16
                                            </option>
                                            <option value="17">17
                                            </option>
                                            <option value="18">18
                                            </option>
                                            <option value="19">19
                                            </option>
                                            <option value="20">20
                                            </option>
                                            <option value="21">21
                                            </option>
                                            <option value="22">22
                                            </option>
                                            <option value="23">23
                                            </option>
                                            <option value="24">24
                                            </option>
                                            <option value="25">25
                                            </option>
                                            <option value="26">26
                                            </option>
                                            <option value="27">27
                                            </option>
                                            <option value="28">28
                                            </option>
                                            <option value="29">29
                                            </option>
                                            <option value="30">30
                                            </option>
                                            <option value="31">31
                                            </option>
                                        </select >
                                        <select class="month">
                                            <option value="1">Januari
                                            </option>
                                            <option value="2">Februari
                                            </option>
                                            <option value="3">Maret
                                            </option>
                                            <option value="4">April
                                            </option>
                                            <option value="5">Mei
                                            </option>
                                            <option value="6">Juni
                                            </option>
                                            <option value="7">Juli
                                            </option>
                                            <option value="8">Agustus
                                            </option>
                                            <option value="9">September
                                            </option>
                                            <option value="10">Oktober
                                            </option>
                                            <option value="11">November
                                            </option>
                                            <option value="12">Desember
                                            </option>
                                        </select>
                                        <input class="year" type="text" size="4" maxlength="4" placeholder="2016"/>
                                    </p>
                                    <p>
                                        <label>Jenis Kelamin *</label>
                                        <input type="radio" value="radio" name="gender"/>
                                        <label class="gender" style="width: 80px">Laki - laki</label>
                                        <input type="radio" value="radio" name="gender"/>
                                        <label class="gender">Perempuan </label>
                                    </p>
                                    <p>
                                        <label style="margin-right: 15px">Alamat *</label>
                                        <textarea style="border: 1px solid #E1E1E1; resize: none; width: 250px; text-spacing: normal; padding: 0px"></textarea>
                                    </p>

                                </fieldset>
                                <fieldset class="row3">
                                    <legend>Idenstitas Diri</legend>
                                    <p>
                                        <label>Agama *
                                        </label>
                                        <select class="month" style="margin-left: 10px">
                                            <option value="1">Islam
                                            </option>
                                            <option value="2">Kristen
                                            </option>
                                            <option value="3">Katholik
                                            </option>
                                            <option value="4">Hindu
                                            </option>
                                            <option value="4">Buddha
                                            </option>
                                            <option value="4">Konghucu
                                            </option>
                                        </select>
                                    </p>
                                    <p>
                                        <label>Status *
                                        </label>
                                        <select class="month" style="margin-left: 10px; overflow:hidden;">
                                            <option value="1">Kawin
                                            </option>
                                            <option value="2">Belum Kawin
                                            </option>
                                            <option value="3">Janda
                                            </option>
                                            <option value="4">Duda
                                            </option>
                                        </select>
                                    </p>
                                    <p>
                                        <label>No. Telepon *
                                        </label>
                                        <input type="text" class="long" placeholder="12 digit angka" required/>
                                    </p>

                                </fieldset>
                                <fieldset class="row1" style="">
                                    <button class="buttonform">Tambahkan &raquo;</button>
                                </fieldset>

                            </form>

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
