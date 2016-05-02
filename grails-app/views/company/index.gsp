<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 6:16 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Nosotros:
                    <strong>¿QUIÉNES SOMOS?</strong>
                </h2>
                <hr>
            </div>
            <div class="col-md-6">
                <img class="img-responsive img-border-left" src="https://b.zmtcdn.com/data/pictures/chains/3/5700013/b38a51822daf30a54249a05b26a9831c.png" alt="">
            </div>
            <div class="col-md-6">
                <p>Somos una compañía interesada en la satisfacción del cliente, donde presentamos productos personalizados acompañados con un servicio de calidad.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Compromisos
                    <strong>MatchFood</strong>
                </h2>
                <hr>
            </div>
            <div class="col-sm-4 text-center">
                <div class=""><img src="${createLinkTo(dir:'images',file:'quality.jpg')}" style="padding-top: 10px" height="230" width="280"/></div>
                <h3>Compromiso de Calidad
                    <small>Productos seguros, muy bien elaborados y recientes</small>
                </h3>
            </div>
            <div class="col-sm-4 text-center">
                <div class=""><img src="${createLinkTo(dir:'images',file:'calidad.jpg')}"  height="" width="100%"/></div>
                <h3>Compromiso en nuestros servicios
                    <small>Agilidad y responsabilidad en cada uno de nuestros servicios</small>
                </h3>
            </div>
            <div class="col-sm-4 text-center">
                <div class=""><img src="${createLinkTo(dir:'images',file:'personal.jpg')}"  height="215" width=""/></div>
                <h3>Compromiso con el cliente
                    <small>Adaptamos nuestros productos y servicios para conformidad del cliente</small>
                </h3>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- /.container -->
</body>
</html>