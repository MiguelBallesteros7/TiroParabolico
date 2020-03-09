<%-- 
    Document   : tiro
    Created on : 09-mar-2020, 19:13:03
    Author     : DAW210
--%>

<%@page import="java.util.ArrayList"%>
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
        String  angulo="0";
         String  velocidad="0";
           /* String nombre = (String) request.getAttribute("nombre");
            if (nombre == null) {
                nombre = "";
            }
            Prestamo prest = (Prestamo) request.getAttribute("prestamo");
            String importeP, cantidad, interes, tiempo;
            if (prest == null) {
                importeP = "";
                cantidad = "0";
                interes = "0";
                tiempo = "12";
            } else {
                importeP = String.valueOf(prest.getImportePrestamo());
                cantidad = String.valueOf(prest.getCapital());
                interes = String.valueOf(prest.getInteres());
                tiempo = String.valueOf(prest.getTiempo());
            }*/
        %>
        <form action="Prestamo" method="post">
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
            
            
            </table>
        </form>
 
    </body>
</html>
