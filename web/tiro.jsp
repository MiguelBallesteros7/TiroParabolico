<%-- 
    Document   : tiro
    Created on : 09-mar-2020, 19:13:03
    Author     : DAW210
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.tiro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% ArrayList<String> angulos = (ArrayList<String>) request.getAttribute("angulos");
        tiro tiroP =(tiro)request.getAttribute("tiroP");
        
         String angulo, velocidad,altura,alcance;
            if (tiroP == null) {
                velocidad = "0";
                angulo = "0";
                
               
            } else {
                velocidad = String.valueOf(tiroP.getvInicial());
                angulo = String.valueOf(tiroP.getAngulo());
                altura = String.valueOf(tiroP.getAlturaMax());
                alcance =String.valueOf(tiroP.getAlcanceMax());
 
            }
        
         
         altura = String.valueOf(request.getAttribute("altura")) ;
         alcance = String.valueOf(request.getAttribute("alcance")) ;
         
        %>
        <form action="Tiro" method="post">
            <label for="velocidad">Velocidad(m/s):</label><input type="text" name="velocidad" value="<%=velocidad%>" id="velocidad"><br/>
            <label for="angulo">Angulo:</label><select name="angulo" id="angulo">
                <% for (int m = 0; m < angulos.size(); m++) {
                        String cadenaS = "";
                        if (angulo.equals(angulos.get(m))) {
                            cadenaS = "selected";
                        }
                %>
                <option value="<%=angulos.get(m)%>" <%=cadenaS%> ><%=angulos.get(m)%></option>


                <% } %>     
            </select>
            <input type="submit" value="Consultar">
            <% if (tiroP != null) {%>
            <h1>Altura Maxima: <%=altura%></h1>
            <h1>Alcance Maximo: <%=alcance%></h1>
            <% }%>
            
            </table>
        </form>
 
    </body>
</html>
