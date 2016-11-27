/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Janji;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sun.security.pkcs11.wrapper.Functions;

/**
 *
 * @author Frans
 */
@WebServlet(name = "bJanji", urlPatterns = {"/bJanji"})
public class bJanji extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        JanjiDAO JD = new JanjiDAO();
        HttpSession session = request.getSession();
        String kode_user = (String) request.getAttribute("username");
        String tgl = request.getParameter("tgl");
        String waktu = request.getParameter("buatJanji");
        String kode = (String) session.getAttribute("username");
        System.out.println(waktu);
        
        
        session = request.getSession(true);
        session.setAttribute("jam", waktu);
        session.setAttribute("tgl", tgl);
        
    

        if (JD.cekJanji(waktu, tgl) == "kosong") {
            //BISA BUAT JANJI
            Janji j = new Janji();
            j.setHariTanggal(tgl);
            j.setJam(waktu);
            j.setKode_janji(kode);
            j.setKode_pasien(waktu);
            
            out.println("<html lang=\"en\">   \n"
                    + "    <head>\n"
                    + "        <meta charset=\"utf-8\">\n"
                    + "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n"
                    + "        <meta name=\"description\" content=\"\">\n"
                    + "        <meta name=\"author\" content=\"\">\n"
                    + "        <style>\n"
                    + "            .circle {\n"
                    + "                border-radius: 50%;\n"
                    + "                width: 70px;\n"
                    + "                height: 75px; \n"
                    + "                background-color: white;\n"
                    + "                box-shadow: 0 8px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 #333;\n"
                    + "                padding: 10px;\n"
                    + "                /* width and height can be anything, as long as they're equal */\n"
                    + "            }\n"
                    + "            \n"
                    + "            .nav-left{\n"
                    + "                height: 800px; \n"
                    + "                width: 100px;\n"
                    + "                margin: 0; \n"
                    + "                background-color: darkred;\n"
                    + "                float: right; \n"
                    + "            }\n"
                    + "            .nav-right{\n"
                    + "                height: 800px; width: 100px;margin-left: 1260px; background-color: #84bd17\n"
                    + "            }\n"
                    + "            .nav-text{\n"
                    + "                margin: 8px;  font-weight: bold; color: white\n"
                    + "            }\n"
                    + "            .nav-container{\n"
                    + "                padding: 15px; padding-top: 300px\n"
                    + "            }\n"
                    + "            a{\n"
                    + "                text-decoration: none;\n"
                    + "            }\n"
                    + "\n"
                    + "        </style>\n"
                    + "        <title>Cek Janji</title>\n"
                    + "        <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n"
                    + "        <link href=\"assets/css/font-awesome.min.css\" rel=\"stylesheet\" />\n"
                    + "        <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\n"
                    + "    </head>\n"
                    + "    <body style=\"overflow: hidden\">\n"
                    + "        <nav  class=\"nav-left\">\n"
                    + "            <div class=\"nav-container\">\n"
                    + "                <a href=\"PASIEN.jsp#about\" >\n"
                    + "                    <div class=\"circle\">\n"
                    + "                        <i class=\"fa fa-arrow-left fa-4x\" > </i>\n"
                    + "                        <p class=\"nav-text\" style=\" \">Back</p>\n"
                    + "                    </div>\n"
                    + "                </a>\n"
                    + "            </div>\n"
                    + "        </nav>\n"
                    + "        <nav class=\"nav-right\">\n"
                    + "            <div class=\"nav-container\">\n"
                    + "                <a href=\"InputJanji\">\n"
                    + "                    <div class=\"circle\" style=\"padding: 10px; \">\n"
                    + "                        <i class=\"fa fa-check-circle fa-4x\"  style=\"\"> </i>\n"
                    + "                        <p class=\"nav-text\" style=\"\">Buat Janji</p>\n" 
                    + "                    </div>"
                    + "<input type=\"hidden\" name=\"tgl\" value=\""+tgl+"\">"
                    + "<input type=\"hidden\" name=\"waktu\" value=\""+waktu+"\">"
                    
                    + "                </a>\n"
                    + "            </div>\n"
                    + "        </nav>\n"
                    + "        <div class=\"container\" id=\"home\">\n"
                    + "            <div class=\" text-center\">\n"
                    + "                <div class=\"col-md-12\" >\n"
                    + "                    <h1 class=\"head-main\">  <img style=\"width: 160px\" src=\"assets/Images/lgo.png\" ></h1>\n"
                    + "                    <h2 class=\"head-sub-main\"> Jadwal kosong pada "+tgl+" <br> pukul "+waktu+"</h2>\n"
                    + "                </div>\n"
                    + "            </div>\n"
                    + "        </div>\n"
                    + "    </body>\n"
                    + "</html>\n"
                    + "");
//            out.println("<button name='Janji'>Buat Janji</button><br>");
//            out.print("<a href='BuatJanji.jsp#about'>Batal</a>");

        } else if (JD.cekJanji(waktu, tgl) == "terisi") {
            //GA BISA BUAT JANJI
            out.println("<h1> janji terisi</h1>");
            out.println("pada :" + tgl + ", jam: " + waktu);
//            response.setHeader("Refresh", "2; url=http://localhost:8090/RPL_Frans/HOME.jsp#about");

        } else if (JD.cekJanji(waktu, tgl) == null) {
            out.println("null");
        }
        {

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
