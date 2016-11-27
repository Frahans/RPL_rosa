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
            select {

                /* styling */
                background-color: white;
                border: thin solid blue;
                border-radius: 4px;
                display: inline-block;
                font: inherit;
                line-height: 1.5em;
                padding: 0px 50px 0px 0px;
                text-decoration: underline;

                /* reset */

                margin: 0;      
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-appearance: none;
                -moz-appearance: none;
            }





            select.round {
                background-image:
                    linear-gradient(45deg, transparent 50%, gray 50%),
                    linear-gradient(135deg, gray 50%, transparent 50%),
                    radial-gradient(#ddd 70%, transparent 72%);
                background-position:
                    calc(100% - 20px) calc(1em + 2px),
                    calc(100% - 15px) calc(1em + 2px),
                    calc(100% - .5em) .5em;
                background-size:
                    5px 5px,
                    5px 5px,
                    1.5em 1.5em;
                background-repeat: no-repeat;
            }

            select.round:focus {
                background-image:
                    linear-gradient(45deg, white 50%, transparent 50%),
                    linear-gradient(135deg, transparent 50%, white 50%),
                    radial-gradient(gray 70%, transparent 72%);
                background-position:
                    calc(100% - 15px) 1em,
                    calc(100% - 20px) 1em,
                    calc(100% - .5em) .5em;
                background-size:
                    5px 5px,
                    5px 5px,
                    1.5em 1.5em;
                background-repeat: no-repeat;
                border-color: green;
                outline: 0;
            }





            select.minimal {
                background-image:
                    linear-gradient(45deg, transparent 50%, gray 50%),
                    linear-gradient(135deg, gray 50%, transparent 50%),
                    linear-gradient(to right, #fff, #fff);
                background-position:
                    calc(100% - 20px) calc(1em + 2px),
                    calc(100% - 15px) calc(1em + 2px),
                    calc(100% - 2.5em) 0.5em;
                background-size:
                    5px 5px,
                    5px 5px,
                    1px 1.5em;
                background-repeat: no-repeat;
            }

            select.minimal:focus {
                background-image:
                    linear-gradient(45deg, green 50%, transparent 50%),
                    linear-gradient(135deg, transparent 50%, green 50%),
                    linear-gradient(to right, #fff, #fff);
                background-position:
                    calc(100% - 15px) 1em,
                    calc(100% - 20px) 1em,
                    calc(100% - 2.5em) 0.5em;
                background-size:
                    5px 5px,
                    5px 5px,
                    1px 1.5em;
                background-repeat: no-repeat;
                border-color: green;
                outline: 0;
            }


            select:-moz-focusring {
                color: transparent;
                text-shadow: 0 0 0 #000;
            }




        </style>
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
                        <li><a href="PEMILIK.jsp#about"> Halaman Utama Pemilik</a>
                        </li> 
                        <li>
                            <div class="dropdown">
                                <button class="dropbtn">Laporan</button>
                                <div class="dropdown-content" style="opacity: 1; background-color: ">
                                    <a href="Laporan.jsp#lap">Keuangan</a>
                                    <a href="#about">Kunjungan Pasien</a>
                                    <a href="#about">Pola Penyakit</a>
                                    <a href="#" onclick="SecondPageFunction()">tes</a>
                                </div>
                            </div>
                        </li>

                        <li><a href="Pegawai.jsp#about">Pegawai</a>
                        </li>
                        <li>
                            <a href="Login.jsp" class="navbar-left fixed btn-group-justified breadcrumb" style="width: 1000px;text-shadow: 2px 0px 2px #333;z-index: 99; padding: 15px; margin-left: 250px; background-color: #84bd17; border-radius: 20px; opacity: 1.0; position: absolute">
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
            <div class="container">    
                <form action="Laporan.jsp" onchange="this.form.submit();">
                    <br><br><br>
                    <div class="col-lg-9 text-right" >

                        <i class="fa fa-stack-overflow fa-3x"> Laporan 
                            <select class="minimal" style="border-color: white" onchange="this.form.submit();" id="lap" auto>
                                <option value="1">Keuangan</option>
                                <option value="2">Kunjungan</option>
                                <option value="3">Pola Penyakit</option>
                            </select>
                        </i> 
                    </div>
                </form>
                <div class="col-lg-3 text-right">
                    <button class="btn">
                        <i class="fa fa-print fa-5x"></i><br>
                        <b>print</b>
                    </button>

                </div>

            </div>
        </section>

        <section class="color-dark"  >
            <div class="container" style="background-color: white; border-radius: 15px; padding-bottom: 50px; box-shadow: 0px 3px 3px 3px #333;">

                <div class="col-md-3 text-center " style="background-color: lightblue; height: 553px; margin-top: 10px; padding: 10px ; border-top-left-radius: 10px; box-shadow: inset 0px 0px 20px 0px #333 ">
                    <br><br><br>
                    <div class="btn-group-vertical">
                        <a href="Tambah_obat.jsp#about" class="btn" style="background-color: darkslategrey; color: white; padding-top: 20px">
                            <i class="fa fa-plus fa-3x" style=""></i>
                            <h4>Tambah Data Obat</h4>
                        </a>
                        <hr>
                        <a href="" class="btn" style="background-color: darkslategrey; color: white; padding-top: 20px">
                            <i class="fa fa-minus-circle fa-3x" style=""></i>
                            <h4>Hapus Data Obat</h4>
                        </a>

                    </div>


                </div>
                <div class="col-xs-1 color-light">

                </div>

                <div class="col-md-9 text-left" style="background-color: lightblue; border-top-right-radius: 10px; margin-top: 10px; ">
                    <table class="table-hover"  style="background-color: inherit; color: black; margin-top: 10px; width: 100%">
                        <tr class="text-center" style="font-weight: bold" >
                            <td style="padding: 10px"> No. </td> <td style="padding-right: 10px">Kode Obat</td> <td> Nama Obat </td> <td style="padding: 0px 20px 0px 20px"> Stok </td> <td class="text-center"> Harga </td> <td style="margin-left: 5px"> Aksi  </td>
                        </tr>

                        <tr class="text-center" style=" ; height: 35px" >
                            <td> 1 </td> <td> O100321 </td> <td> Alkohol </td> <td>  11 </td> <td> 7000 </td> <td> <input type="checkbox" > </td>
                        </tr>

                        <tr class="text-center" style=" ; height: 35px" >
                            <td> 2 </td> <td> O100322 </td> <td> Paracetamol </td> <td>  3 </td> <td> 110000 </td> <td> <input type="checkbox" > </td>
                        </tr>

                        <tr class="text-center" style=" ; height: 35px" >
                            <td> 3 </td> <td> O100323 </td> <td> Aspirin </td> <td>  70 </td> <td> 76000 </td> <td> <input type="checkbox" > </td>
                        </tr>

                        <tr class="text-center" style=" ; height: 35px" >
                            <td> 4 </td> <td> O100324 </td> <td> Cialis </td> <td>  50 </td> <td> 17000 </td> <td> <input type="checkbox" > </td>
                        </tr>

                        <tr class="text-center" style=" ; height: 35px" >
                            <td> 5 </td> <td> O100325 </td> <td> Cialis Super Active </td> <td>  80 </td> <td> 27000 </td> <td> <input type="checkbox" > </td>
                        </tr>

                    </table>
                </div>
            </div>
        </section>

        <section class=" color-light"  >
            <div class="container" >



            </div>
        </section>
        <!--End About Section-->



        <!-- WORK Flow Section -->  

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
        <script>
                                function SecondPageFunction() {
                                    alert('Second page action got triggered!');
                                    document.getElementById('lap').getElementsByTagName('option')[2].selected = 'selected';
                                }
        </script>
    </body>
</html>
