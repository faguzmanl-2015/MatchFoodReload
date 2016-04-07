<%--
  Created by IntelliJ IDEA.
  User: LUCIO
  Date: 3/04/2016
  Time: 5:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>MatchFood</title>
</head>

<body>

<p>Cree su usuario</p>

<form class="form-horizontal" role="form" controller="/MatchFood/RegisterController" action="crearUsuario" method="post" enctype="multipart/form-data">
    <p>
        <label for='username'>Nombre de usuario:</label>
        <input type='text' class='text_' name='usernameR' id='username'/>
    </p>

    <p>
        <label for='password'>Contraseña:</label>
        <input type='password' class='text_' name='passwordR' id='password'/>
    </p>

    <p>
        <input type='submit' id="submit" value='Registrarse'/>
    </p>
</form>

</body>
</html>

