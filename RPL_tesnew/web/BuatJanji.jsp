<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Janji"%>
<%@page import="Controller.JanjiDAO"%>
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
                        <li><a href="PASIEN.jsp#about"><< Halaman Utama Pasien</a>
                        </li>
                        <li><a class="close"> Janji</a>
                        </li>
                        <li><a href="AkunSet.jsp#about">Akun</a>
                        </li>
                        <li><a href="#work-sec">Help</a>
                        </li>
                        <li>
                            <a href="Login.jsp#about" class="navbar-left fixed btn-group-justified breadcrumb" style="text-shadow: 2px 0px 2px #333;z-index: 99; padding: 15px; margin-left: 300px; background-color: #84bd17; border-radius: 20px; opacity: 1.0;">
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
        <section class="color-white" id="about"  >
            <div class="container" >

                <div class="row text-center" >
                    <br><br><br>
                    <i class="fa fa-clock-o fa-5x">Tentukan Jam Janji</i>
                </div>

            </div>
        </section>

        <section class=" color-dark"  >
            <div class="container" style="background-color: white; border-radius: 15px; padding-bottom: 50px; box-shadow: 0px 3px 3px 3px #333">


                <div class="col-md-3 text-center " style="background-color: #fff; height: 573px; padding: 10px ; border-top-left-radius: 10px; ">
                    <form action="BuatJanji.jsp#about">




                    </form>
                </div>

                <div class="col-md-8 text-left" style="background-color: #fff; border-top-right-radius: 10px ">
                    <%String id_value = request.getParameter("value");%>
                    <form action="./bJanji">
                        <table class="table"  style="background-color: lightblue;  margin: 10px; padding: 10px; border-radius: 10px;color: white ">

                            <tr style="background-color: #269abc; padding: 5px; font-weight: bolder">
                                <td style="width: 100px; padding: 25px; background-color: #269ad0"> Waktu </td> 
                                <td style="padding: 20px; padding: 25px;background-color: #269abc">  bln / tgl/ tahun <input id="myDate" type="date" name="tgl" style="color: black; padding: 10px; margin-left: 10px"> </td> 
                                <td style="padding: 10px;padding: 25px;"class="text-center"> Buat Janji</td>
                            </tr>

                            <%
                                int jam = 7;
                                int menit = 0;
                                int n = 0;
                            %>
                            <tr>
                                <td>
                                    <select style="margin: 5px; color: black" name="buatJanji" >
                                        <%
                                            for (int i = 0; i <= 60; i++) {
                                                menit = menit + 10;
                                                if (menit == 60) {
                                                    menit = 0;
                                                    jam++;
                                                }
                                                n++;
                                        %>
                                        <option value="<%=jam%>:<%=menit%>" >
                                            <%=jam%> : <%=menit%></option>

                                        <%
                                                if (jam == 13) {
                                                    break;
                                                }
                                            }%>
                                    </select>    
                                </td>
                                <td><button class="btn" style="background-color: darkgray;margin-left: 125px;padding: 10px; padding-left: 100px; padding-right: 100px"> Cek Tanggal »</button></td>
                            </tr>
                            <tr></tr>
                        </table>
                    </form>
                    <%

                    %>
                </div>
            </div>
        </section>
        <!--End About Section-->
      
        <section class="color-white " id="work-sec"  >
            <div class="container" >
                <h1 class="text-center">Help </h1>
                <div class="row text-center" >
                    <div class="col-md-8 col-md-offset-2 ">

                        <hr>
                        <i class="fa fa-bell fa-5x text-info" style="font-size: 35px">Buat Janji</i> <br><br><br><br><br>

                        <p class="text-left text-info">
                            1. Mengeklik menu Buat Janji Periksa<br>
                            2. Menampilkan halaman Buat Janji Periksa yang berisi hari, tanggal, jam. Pada halaman terdapat tombol buat.<br>
                            3. Mengisi isian hari, tanggal, dan jam pada halaman Buat Janji Periksa.<br>
                            4. Mengeklik tombol buat.<br>
                            5. Mengecek pada data base apakah hari, tanggal, dan jam yang dimasukkan masih kosong. <br>
                            6. Menyimpan data yang telah dimasukkan ke dalam data base Janji Periksa.<br>
                            7. Menampilkan halaman sukses membuat janji periksa.<br>
                            8. Mengirim email ke email pasien yang berisi notifikasi bahwa pasien telah terdaftar pada hari, tanggal, dan jam yang diinginkan.<br>
                            9. Menampilkan halaman utama.<br>

                        </p>

                    </div>
                    <hr>
                </div>

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

                    document.getElementById("myDate").defaultValue = "2016-10-25";
                    document.getElementById("myDate").getDay();
                    function mydate()
                    {
                        //alert("");
                        document.getElementById("dt").hidden = false;
                        document.getElementById("ndt").hidden = true;
                    }
                    function mydate1()
                    {
                        d = new Date(document.getElementById("dt").value);
                        dt = d.getDate();
                        mn = d.getMonth();
                        mn++;
                        yy = d.getFullYear();
                        document.getElementById("ndt").value = dt + "/" + mn + "/" + yy
                        document.getElementById("ndt").hidden = false;
                        document.getElementById("dt").hidden = true;
                    }

                </script>
                </body>
                </html>
