<%-- 
    Document   : welcome
    Created on : Sep 7, 2017, 6:49:21 PM
    Author     : Carson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome Form</title>
    </head>
    <body>
        <h2>Please enter your name</h2>
        <form id="helloForm" name="helloForm" method="POST" action="greeter">
            
            <!--
                Note that the "name" attribute is a parameter key used in the
                servlet controller to retrieve the value of this input control
            -->
            Name:<input type="text" name="myName" value=""/><br>
            <input type="submit" name="submit" value="submit"/>
            
        </form>        
        
    </body>
</html>
