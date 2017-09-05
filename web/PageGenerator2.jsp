<%-- 
    Document   : PageGenerator2
    Created on : Sep 5, 2017, 6:27:29 PM
    Author     : Carson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Generator 2</title>
        <title>Sample Page Generator</title>        
    </head>
    <body>
        <h1>Page Generator 2</h1>
        <table border="2">
            <%
                int NUM_TABLE_ROWS = 3;
                int NUM_TABLE_COLS = 3;
            %>
            <%
                for (int j = 1; j < NUM_TABLE_COLS + 1; j++) {

            %>
            <th>heading <%=j%></th>
            <%
                }
            %>
            <%
                for (int i = 1; i < NUM_TABLE_ROWS + 1; i++) {
            %>             
            <tr>
                <%
                    for (int j = 1; j < NUM_TABLE_COLS + 1; j++) {
                %>
                <td>row <%=i%> cell <%=j%></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>    

        </table>
        <br>
        <a href="index.jsp">Back</a><br><br>
        <footer> 2017 Carson Schultz Distributed Java</footer>
    </body>
</html>