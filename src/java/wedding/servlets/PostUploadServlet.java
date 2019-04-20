
package wedding.servlets;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import wedding.DBconnection.DBConnection;


@MultipartConfig(maxFileSize = 16177215)
public class PostUploadServlet extends HttpServlet {

    private static final int BUFFER_SIZE = 4096;

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/weddingtest";
    private String dbUser = "root";
    private String dbPass = "";

   
    private Connection getConnection() {
        Connection conn = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        } catch (Exception e) {
           
            throw new RuntimeException("Failed to obtain database connection.", e);
        }
        return conn;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String cat = request.getParameter("cat");
        String pname = request.getParameter("pname");
       

        InputStream inputStream = null;

        Part filePart = request.getPart("pic");
        int price = Integer.parseInt(request.getParameter("price"));
         String pdetails = request.getParameter("postdetails");

        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            //obtains input stream of the upload file
            //the InputStream will point to a stream that contains
            //the contents of the file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        String message = null; // message will be sent back to client

        try {

            // connects to the database
            conn = getConnection();

            // constructs SQL statement
            String sql = "INSERT INTO posting (email,cat,pname,pic,price,pdetails) values (?, ?, ?, ?,?,?)";
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);

            pstmtSave.setString(1, email);
            pstmtSave.setString(2, cat);
            pstmtSave.setString(3, pname);

            if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
                pstmtSave.setBlob(4, inputStream);
            }
            pstmtSave.setInt(5, price);
            pstmtSave.setString(6, pdetails);
            
            //sends the statement to the database server
            int row = pstmtSave.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }

            String filepath = "C:\\Users\\Gamith\\Documents\\NetBeansProjects\\system\\web\\43131404_517318108695474_2757821465951731712_n.jpg";

            //Obtaining the file from database
            //Using a second statement
            String sql1 = "SELECT pic FROM posting WHERE cat=? AND pname=? AND price=? AND pdetails=? ";
            PreparedStatement pstmtSelect = conn.prepareStatement(sql1);

            pstmtSelect.setString(1, cat);
            pstmtSelect.setString(2, pname);
            pstmtSelect.setInt(3, price);
            pstmtSelect.setString(4, pdetails);

            ResultSet result = pstmtSelect.executeQuery();

            if (result.next()) {
                Blob blob = result.getBlob("pic");
                InputStream inputStream1 = blob.getBinaryStream();
                OutputStream outputStream = new FileOutputStream(filepath);
                int bytesRead = -1;
                byte[] buffer = new byte[BUFFER_SIZE];
                while ((bytesRead = inputStream1.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                inputStream1.close();
                outputStream.close();
                System.out.println("File saved");
            }

        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    //silent
                }
            }

           
            // forwards to the message page
            // getServletContext().getRequestDispatcher("/Message.jsp")
            // .include(request, response);
            response.sendRedirect("SpPostViewServlet?succ=1");

        }

    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
