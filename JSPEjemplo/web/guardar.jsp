<%-- 
    Document   : guardar
    Created on : 20 abr 2023, 5:11:07
    Author     : GHOSTKILLER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.* "%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            //aqui ya entra codigo java
            Connection con = null;
            Statment set = null;
            ResultSet res = null;
            
            String url, username, password, driver;
            
            url = "jdbc:mysql://localhost/prueba2";
            userName = "root";
            password = "qu13r0c0m3r";
            
            driver = "com.mysql.cj.jdbc.Driver";
            //El driver funciona para 
            
            try{
                class.forName(driver);
                con = DriverManager.getConnection(url, userName, password)
                
                //Se realizara un try para tener vistas de los diferentes errores
                try{
                set = con.createStatement();
                //Entrada de paramaetros del formulario
                String nombre, ciudad, telefono, q;
                
                nombre = request.getParameter("nombre");
                ciudad = request.getParameter("ciudad");
                telefono = request.getParameter("tel");
                
                q = "insert into registro2(nom_us, ciudad_us, tel_us) "
                + "values ('"+nombre+"', '"+ciudad+"', '"+tel+"')";
                
                int registro = set.executeUpdate(q);
                %>
                <h1>Registro Exitoso se logro</h1>
                <%
                
            }catch(SQLException ed){
            
            }
            
            }catch(Exception e){
            
            }
            
            %>
        
        <h1>Registro Exitoso</h1>
        <a href="index.html">Regresar a la pagina principal</a>
    </body>
</html>
