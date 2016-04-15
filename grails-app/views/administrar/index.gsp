<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 10:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Administrar</title>
    <meta name="layout" content="main">
</head>
<body>
    <g:javascript>
        var rol = "admin";
        visibilidad(rol);
        function visibilidad(rol) {
            if (rol == "usuario")
                document.getElementById("administar").style.visibility = "hidden";
            else
                document.getElementById("administar").style.visibility = "visible";
        }
    </g:javascript>
</body>
</html>