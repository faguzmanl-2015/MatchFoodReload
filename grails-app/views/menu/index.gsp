<%--
  Created by IntelliJ IDEA.
  User: Andréslee
  Date: 22/04/2016
  Time: 9:11 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta name="layout" content="main">

</head>

<body>

<!-- Page Content -->
<div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron hero-spacer">
        <h1>Disfruta de Nuestro <b>Menú</b></h1>
        <p>Aquí tienes el menú que nuestros clientes nos han ayudado a crear, pero si eres de esos que quiere más ayúdanos y prepara tu sándwich ahora mismo.</p>
        <p><a class="btn btn-primary btn-large" href="${createLink(controller: 'prepare', action: 'renderprepare')}">¡Preparar mi sándwich ahora!</a>
        </p>
    </header>

    <hr>

    <!-- Title -->
    <div class="row">
        <div class="col-lg-12">
            <h3>Últimos sándwiches agregados</h3>
        </div>
    </div>
    <!-- /.row -->

    <!-- Page Features -->
    <div class="row text-center">

        <div class="col-md-3 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'carneDesmechada.png')}" alt="CarneDes" height="200" width="300">
                <div class="caption">
                    <h3>Carne de Res</h3>
                    <p>Carne desmechada, queso amarillo, lechuga, tomate, pimentón, apio, mostaza, salsa BBQ,
                    pasta de tomate, cebolla roja y salsa MatchFood.</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'menu', action: 'makeOrderT1')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'vegetariano.png')}" alt="Mex" height="200" width="300">
                <div class="caption">
                    <h3>Vegetariano</h3>
                    <p>Estragón, lechuga romana, tomate, cebolla, champiñones, zanahoria, apio, pimentón,
                    maíz, salsa teriyaki, queso amarillo y salsa MatchFood.</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'menu', action: 'makeOrderT2')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'Mexicano.png')}" alt="Mex" height="200" width="300">
                <div class="caption">
                    <h3>Mexicano</h3>
                    <p>Carne desmechada, chile, queso mozzarella, tomate, guacamole, cilantro,
                    lechuga, nachos, cebolla roja, y salsa MatchFood.</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'menu', action: 'makeOrderT3')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'Mexicano.png')}" alt="Mex" height="200" width="300">
                <div class="caption">
                    <h3>Repetido</h3>
                    <p>Para los que les gusta repetir jajajaja</p>
                    <p>
                        <a href="#" class="btn btn-primary">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

    </div>
    <!-- /.row -->

    <hr>

    <!--div class="col-md-4">
        <h2>Hawaiano</h2>
        <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'hawaiano.png')}" alt="CarneDes"/></div>
        <p>
            Jamón, piña, queso mozzarella y mayonesa.
        </p>
    </div>
    <div class="col-md-4">
        <h2>Jamón</h2>
        <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'jamon.png')}" alt="Veg" /></div>
        <p>
            Jamón, jamonada, jamón de cordero, queso mozzarella, lechuga y salsa Match Food Reload.
        </p>
    </div>
    <div class="col-md-4">
        <h2>Pollo</h2>
        <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'Pollo.png')}" alt="Mex" /></div>
        <p>
            Pollo, tomate, queso mozzarella, lechuga y mayonesa.
        </p>
    </div>
    <div class="col-md-4">
        <h2>Rolo</h2>
        <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'rolo.png')}" alt="CarneDes" /></div>
        <p>
            Lomo de res, queso, cebolla roja y salsa Match Food
        </p>
    </div>
    <div class="col-md-4">
        <h2>Italiano</h2>
        <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'italiano.png')}" alt="CarneDes" /></div>
        <p>
            Carne desmechada, jamón, salami, queso mozzarella, queso parmesano, tomate, lechuga romana, albahaca, tomillo, pimienta y salsa italiana.
        </p>
    </div-->

</div>
<!-- /.container -->

</body>

</html>