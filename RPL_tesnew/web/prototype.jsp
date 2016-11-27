<html lang="en">   
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <style>
            .circle {
                border-radius: 50%;
                width: 70px;
                height: 75px; 
                background-color: white;
                box-shadow: 0 8px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 #333;
                padding: 10px;
                /* width and height can be anything, as long as they're equal */
            }

            .nav-left{
                height: 800px; 
                width: 100px;
                margin: 0; 
                background-color: darkred;
                float: right; 
            }
            .nav-right{
                height: 800px; width: 100px;margin-left: 1260px; background-color: #84bd17
            }
            .nav-text{
                margin: 8px;  font-weight: bold; color: white
            }
            .nav-container{
                padding: 15px; padding-top: 300px
            }
            a{
                text-decoration: none;
            }

        </style>
        <title>Cek Janji</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body style="overflow: hidden">
        <nav  class="nav-left">
            <div class="nav-container">
                <form action="BuatJanji.jsp">
                    <button class="circle">
                        <i class="fa fa-arrow-left fa-4x" > </i>
                        
                    </button>
                </form>
            </div>
        </nav>
        <nav class="nav-right">
            <div class="nav-container">
                <form action="bJanji" method="post">
                    <button class="circle" style="padding: 10px; ">
                        <i class="fa fa-check-circle fa-4x"  style=""> </i>

                    </button>
                </form>
            </div>
        </nav>
        <div class="container" id="home">
            <div class=" text-center">
                <div class="col-md-12" >
                    <h1 class="head-main">  <img style="width: 160px" src="assets/Images/lgo.png" ></h1>
                    <h2 class="head-sub-main"> Jadwal Kosong pada , <br>pukul </h2>
                </div>
            </div>
        </div>
    </body>
</html>
