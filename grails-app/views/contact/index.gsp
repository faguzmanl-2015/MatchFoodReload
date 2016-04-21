<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 6:18 AM
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
                <hr><h2 class="intro-text text-center">Contáctanos <strong>Match Food</strong></h2><hr>
            </div>
            <div class="col-md-8">
                <div style="width:100%;overflow:hidden;height:400px;max-width:100%;"><div id="embed-map-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Universidad+Nacional+de+Colombia,+Bogotá,+Colombia&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-html" href="https://www.interserver-coupons.com" id="enable-map-info">interserver-coupons.com</a><style>#embed-map-display img{max-width:none!important;background:none!important;font-size: inherit;}</style></div><script src="https://www.interserver-coupons.com/google-maps-authorization.js?id=1e166be2-c508-03f0-5471-9fe8be4e7a0a&c=google-html&u=1460219317" defer="defer" async="async"></script>
            </div>
            <div class="col-md-4">
                <h3>Match Food Reload</h3>
                <p>Teléfono Bogotá:
                    <strong>316 50 00</strong>
                </p>
                <p>Dirección:
                    <strong>Teusaquillo, Calle 45 # 30-12 </strong>
                </p>
                <p>Email:<br>
                    <strong><a href="mailto:name@example.com">atencionalcliente@matchfood.com.co</a></strong>
                    <strong><a href="mailto:matchfoodreload@gmail.com">matchfoodreload@gmail.com</a></strong>
                </p>
                <div style="display: inline">
                   <p>Síguenos en:</p>
                    <a href="https://www.facebook.com/pages/Universidad-Nacional-de-Colombia/109253625759997" target="_blank" title="">
                        <img width="10%" src="${createLinkTo(dir:'images',file:'Facebook.png')}"/>
                    </a>
                    <a href="https://twitter.com/UNColombia" target="_blank" title="">
                        <img width="10%" src="${createLinkTo(dir:'images',file:'Twitter.png')}"/>
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Envíanos
                    <strong> tu mensaje</strong>
                </h2>
                <hr>
                <p> ¿Podemos ayudarte en algo? ¡Queremos saber tu opinión!</p>
                <p>Para nosotros es muy importante conocer su opinión sobre Match Food, por eso, hemos creado el
                siguiente espacio para que pueda compartir con nosotros su experiencia con nuestra marca. En el presente
                formulario puede dejarnos sus comentarios, solicitudes, felicitaciones, quejas o sugerencias. Tenemos un
                equipo a su disposición para darle una respuesta oportuna.</p>
                <br>
                <form role="form" controller="/MatchFood/ContactController" action="enviarCorreo" method="post" onerror="errorSendEmail()" onsubmit="correctSendEmail()">
                    <div class="row">
                        <div class="form-group col-lg-4">
                            <label>Nombre</label>
                            <input required="required" name="nameContact" id="nameContact" type="text" class="form-control">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>Email</label>
                            <input required="required"  name="emailContact" pattern="[^ @]*@[^ @]*" id="emailContact" type="email" class="form-control">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>Celular</label>
                            <input required="required" name="phoneContact" id="phoneContact" type="tel" class="form-control">
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-group col-lg-12">
                            <label>Comentarios</label>
                            <textarea required="required" name="commentContact" id="commentContact" class="form-control" rows="6"></textarea>
                        </div>
                        <div class="form-group col-lg-12">
                            <button type="reset" id="btn_cancel_send_comments" class="btn btn-default">Cancelar</button>
                            <input type='submit' id="btn_send_comments" class="btn btn-primary" value='Enviar'/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<!-- /.container -->
</body>
</html>