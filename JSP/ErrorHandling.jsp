<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Handling</title>
    </head>
    <body>
        <%
            try{
                int result = 10/0;
            } catch(ArithmeticException e){
                out.print("An error occured: "+e.getMessage());
            }
        %>
    </body>
</html>
