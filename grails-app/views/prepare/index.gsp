<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 6:29 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <asset:javascript src="Interact/interact.min.js" />
    <asset:stylesheet src="Interact/interact.css" />
</head>
<body>
<div style="display: block">
    <div class="col-sm-12">
        <img  style ="max-width: 100%; max-height: 100%;  " src="${createLinkTo(dir:'images',file:'bannerPreparalo.png')}"  />
    </div>
    <div class="col-sm-4" style="padding: 10px">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Pan</h3>
            </div>
            <div class="panel-body">
                <div class="col-sm-3">
                    <input id="panBag" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPanBaguette.png')}" />
                    <p style="text-align: center"><b>Baguette</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="panBla" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPanBlanco.png')}" />
                    <p style="text-align: center"><b>Blanco</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="panInt" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPanIntegral.png')}" />
                    <p style="text-align: center"><b>Integral</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="panQue" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPanQueso.png')}" />
                    <p style="text-align: center"><b>Queso</b></p>
                </div>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Proteína</h3>
            </div>
            <div class="panel-body">
                <div class="col-sm-3">
                    <input id="atun" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionAtun.png')}" />
                    <p style="text-align: center"><b>Atún</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="jamon" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionJamon.png')}" />
                    <p style="text-align: center"><b>Jamón</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="pollo" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPollo.png')}" />
                    <p style="text-align: center"><b>Pollo</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="salmon" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionSalmon.png')}" />
                    <p style="text-align: center"><b>Salmón</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="tocino" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionTocino.png')}" />
                    <p style="text-align: center"><b>Tocino</b></p>
                </div>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Ingredientes</h3>
            </div>
            <div class="panel-body">
                <div class="col-sm-3">
                    <input id="champinon" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionChampinon.png')}" />
                    <p style="text-align: center"><b>Champiñones</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="cebolla" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionCebolla.png')}" />
                    <p style="text-align: center"><b>Cebolla</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="lechuga" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionLechuga.png')}" />
                    <p style="text-align: center"><b>Lechuga</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="pepino" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPepino.png')}" />
                    <p style="text-align: center"><b>Pepino</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="pimenton" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionPimenton.png')}" />
                    <p style="text-align: center"><b>Pimentón</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="queso" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionQueso.png')}" />
                    <p style="text-align: center"><b>Queso</b></p>
                </div>
                <div class="col-sm-3">
                    <input id="tomate" type="image" style ="height: 100%; width: 100%" src="${createLinkTo(dir:'images',file:'DragAndDrop/presentacionTomate.png')}" />
                    <p style="text-align: center"><b>Tomate</b></p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-8" style="padding: 10px; padding-bottom: 1000px; display: block;">
        <div style="display: block;">
            <input id="mesa" style="z-index: 1; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/mesaMontaje.png')}" />
            <div class="leftStuff panel" id="outer-dropzone">
                <input class="dropzone" id="panBaguette1" style="visibility: hidden; z-index: 2; width: 40%;left: 180px; top: 270px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/basePanBaguette.png')}" />
                <input class="dropzone" id="panBlanco1" style="visibility: hidden; z-index: 2; width: 40%;left: 180px; top: 270px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/basePanBlanco.png')}" />
                <input class="dropzone" id="panIntegral1" style="visibility: hidden; z-index: 2; width: 40%;left: 180px; top: 270px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/basePanIntegral.png')}" />
                <input class="dropzone" id="panQueso1" style="visibility: hidden; z-index: 2; width: 40%;left: 180px; top: 270px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/basePanQueso.png')}" />
            </div>

            <input class="dropzone" id="tapaPanBaguette1" style="visibility: hidden; z-index: 4; width: 40%;left: 160px; top: 240px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/tapaPanBaguette.png')}" />
            <input class="dropzone" id="tapaPanBlanco1" style="visibility: hidden; z-index: 4; width: 40%;left: 160px; top: 240px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/tapaPanBlanco.png')}" />
            <input class="dropzone" id="tapaPanIntegral1" style="visibility: hidden; z-index: 4; width: 40%;left: 160px; top: 240px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/tapaPanIntegral.png')}" />
            <input class="dropzone" id="tapaPanQueso1" style="visibility: hidden; z-index: 4; width: 40%;left: 160px; top: 240px; position: absolute; " type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/tapaPanQueso.png')}" />


            <img id="atunPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/atunPlato.png')}" />
            <img id="jamonPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/jamonPlato.png')}" />
            <img id="polloPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/polloPlato.png')}" />
            <img id="salmonPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/salmonPlato.png')}" />
            <img id="tocinoPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/TocinoPlato.png')}" />
            <img id="champinonPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/campinonPlato.png')}" />
            <img id="cebollaPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/cebollaPlato.png')}" />
            <img id="lechugaPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/lechugaPlato.png')}" />
            <img id="pepinoPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/pepinoPlato.png')}" />
            <img id="pimentonPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/pimentonPlato.png')}" />
            <img id="quesoPlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/quesoPlato.png')}" />
            <img id="tomatePlato" class="draggable" style="background-color: rgba(0,0,0,0); visibility: hidden; z-index: 3; width: 38%;left: 20px; top: 650px; position: absolute;" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/tomatePlato.png')}" />
        </div>
        <div style="display: block">
            <form role="form" controller="/MatchFood/PrepareController" action="makeOrderPrepare" method="post">
                <input id="totalR" name="totalR" style="visibility: hidden" value="0"/>
                <input id="btn_terminar" value="Terminar" type="submit" style="display: block; z-index: 3;left: 630px; top: 730px; position: absolute;" class="btn btn-default btn-lg"/>
            </form>
        </div>
    </div>
</div>

<!--div id="visualizer-panel">
    <div class="leftStuff panel">
        <div id="yes-drop" class="draggable drag-drop"> #yes-drop </div>
        <div id="outer-dropzone" class="dropzone">
            #outer-dropzone
            <div id="inner-dropzone" class="dropzone">#inner-dropzone</div>
        </div>
    </div>
</div-->
<g:javascript>
    var contadorElementos = 0;
    var contadorCarnes = 0;
    var contadorAcompañantes = 0;
    var profundidad = 0;
    var pan = 0;

    $('#btn_terminar').click(function() {
        profundidad = profundidad + 2;
        if( pan === 1 ){
            $('#tapaPanBaguette1').css("visibility", "visible");
            $('#tapaPanBaguette1').css("z-index", profundidad.toString());
        }else{
            if( pan === 2 ){
                $('#tapaPanBlanco1').css("visibility", "visible");
                $('#tapaPanBlanco1').css("z-index", profundidad.toString());
            } else {
                if( pan === 3 ){
                    $('#tapaPanIntegral1').css("visibility", "visible");
                    $('#tapaPanIntegral1').css("z-index", profundidad.toString());
                } else {
                    if( pan === 4 ){
                        $('#tapaPanQueso1').css("visibility", "visible");
                        $('#tapaPanQueso1').css("z-index", profundidad.toString());
                    } else {
                        alert ("Debe seleccionar un pan para su sándwich");
                    }
                }
            }
        }

        var total = 4000*contadorCarnes + 2000*contadorAcompañantes
        $("#totalR").val(total);

        var r = confirm("Proteina: " + contadorCarnes.toString() + "\nIngredientes: " + contadorAcompañantes.toString() + "\nTotal a Pagar: $ " + total);
        if (r == true) {
            alert(" Felicidades. Vas a disfrutar del mejor Sándwich a tu gusto");
     } else {
            $('#tapaPanBaguette1').css("visibility", "hidden");
            $('#tapaPanBlanco1').css("visibility", "hidden");
            $('#tapaPanIntegral1').css("visibility", "hidden");
            $('#tapaPanQueso1').css("visibility", "hidden");
    }
});

$('#jamon').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorCarnes = contadorCarnes + 1;
    profundidad = contadorElementos + 2;
    if( $('#jamonPlato').is("visible") ){
        $('#jamonPlato').css("visibility", "hidden");
    }else{
        $('#jamonPlato').css("visibility", "visible");
        $('#jamonPlato').css("z-index", profundidad.toString());
    }
});

$('#atun').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorCarnes = contadorCarnes + 1;
    profundidad = contadorElementos + 2;
    if( $('#atunPlato').is("visible") ){
        $('#atunPlato').css("visibility", "hidden");
    }else{
        $('#atunPlato').css("visibility", "visible");
        $('#atunPlato').css("z-index", profundidad.toString());
    }
});

$('#salmon').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorCarnes = contadorCarnes + 1;
    profundidad = contadorElementos + 2;
    if( $('#salmonPlato').is("visible") ){
        $('#salmonPlato').css("visibility", "hidden");
    }else{
        $('#salmonPlato').css("visibility", "visible");
        $('#salmonPlato').css("z-index", profundidad.toString());
    }
});

$('#pollo').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorCarnes = contadorCarnes + 1;
    profundidad = contadorElementos + 2;
    if( $('#polloPlato').is("visible") ){
        $('#polloPlato').css("visibility", "hidden");
    }else{
        $('#polloPlato').css("visibility", "visible");
        $('#polloPlato').css("z-index", profundidad.toString());
    }
});

$('#tocino').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorCarnes = contadorCarnes + 1;
    profundidad = contadorElementos + 2;
    if( $('#tocinoPlato').is("visible") ){
        $('#tocinoPlato').css("visibility", "hidden");
    }else{
        $('#tocinoPlato').css("visibility", "visible");
        $('#tocinoPlato').css("z-index", profundidad.toString());
    }
});

$('#champinon').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#champinonPlato').is("visible") ){
        $('#champinonPlato').css("visibility", "hidden");
    }else{
        $('#champinonPlato').css("visibility", "visible");
        $('#champinonPlato').css("z-index", profundidad.toString());
    }
});

$('#cebolla').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#cebollaPlato').is("visible") ){
        $('#cebollaPlato').css("visibility", "hidden");
    }else{
        $('#cebollaPlato').css("visibility", "visible");
        $('#cebollaPlato').css("z-index", profundidad.toString());
    }
});

$('#lechuga').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#lechugaPlato').is("visible") ){
        $('#lechugaPlato').css("visibility", "hidden");
    }else{
        $('#lechugaPlato').css("visibility", "visible");
        $('#lechugaPlato').css("z-index", profundidad.toString());
    }
});

$('#pepino').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#pepinoPlato').is("visible") ){
        $('#pepinoPlato').css("visibility", "hidden");
    }else{
        $('#pepinoPlato').css("visibility", "visible");
        $('#pepinoPlato').css("z-index", profundidad.toString());
    }
});

$('#pimenton').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#pimentonPlato').is("visible") ){
        $('#pimentonPlato').css("visibility", "hidden");
    }else{
        $('#pimentonPlato').css("visibility", "visible");
        $('#pimentonPlato').css("z-index", profundidad.toString());
    }
});

$('#queso').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#quesoPlato').is("visible") ){
        $('#quesoPlato').css("visibility", "hidden");
    }else{
        $('#quesoPlato').css("visibility", "visible");
        $('#quesoPlato').css("z-index", profundidad.toString());
    }
});

$('#tomate').click(function() {
    contadorElementos = contadorElementos + 1;
    contadorAcompañantes = contadorAcompañantes + 1;
    profundidad = contadorElementos + 2;
    if( $('#tomate').is("visible") ){
        $('#tomatePlato').css("visibility", "hidden");
    }else{
        $('#tomatePlato').css("visibility", "visible");
        $('#tomatePlato').css("z-index", profundidad.toString());
    }
});

$('#panBag').click(function(){
    pan = 1;
    $('#panBaguette1').css("visibility", "visible");
    $('#panBlanco1').css("visibility", "hidden");
    $('#panIntegral1').css("visibility", "hidden");
    $('#panQueso1').css("visibility", "hidden");

});
$('#panBla').click(function(){
    pan = 2;
    $('#panBaguette1').css("visibility", "hidden");
    $('#panBlanco1').css("visibility", "visible");
    $('#panIntegral1').css("visibility", "hidden");
    $('#panQueso1').css("visibility", "hidden");
});
$('#panInt').click(function(){
    pan = 3;
    $('#panBaguette1').css("visibility", "hidden");
    $('#panBlanco1').css("visibility", "hidden");
    $('#panIntegral1').css("visibility", "visible");
    $('#panQueso1').css("visibility", "hidden");
});
$('#panQue').click(function(){
    pan = 4;
    $('#panBaguette1').css("visibility", "hidden");
    $('#panBlanco1').css("visibility", "hidden");
    $('#panIntegral1').css("visibility", "hidden");
    $('#panQueso1').css("visibility", "visible");
});


interact('.draggable').draggable({
    inertia: true,
    restrict: {
        restriction: "#visualizer-panel",
        endOnly: true,
        elementRect: { top: -0.8, left: -0.45, bottom: -0.2, right: 2.55 }
    },
    onmove: function (event) {
        var target = event.target,
        // keep the dragged position in the data-x/data-y attributes
            x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx,
            y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy;

        // translate the element
        target.style.webkitTransform =
                target.style.transform =
                        'translate(' + x + 'px, ' + y + 'px)';

        // update the posiion attributes
        target.setAttribute('data-x', x);
        target.setAttribute('data-y', y);
    },
    onend: function(event) {
        console.log(event);
    }
});

interact('.dropzone').dropzone({
    accept: '.draggable',
    overlap: 0.01,

    // add / remove dropzone feedback
    ondropactivate: function (event) {
        event.target.classList.add('drop-active');
    },
    ondropdeactivate: function (event) {
        event.target.classList.remove('drop-active');
    },

    // add / remove dropzone feedback
    ondragenter: function (event) {
        var draggableElement = event.relatedTarget,
                dropzoneElement = event.target;
        dropzoneElement.classList.add('drop-target');
        draggableElement.classList.add('can-drop');
    },
    ondragleave: function (event) {
        event.target.classList.remove('drop-target');
        event.relatedTarget.classList.remove('can-drop');
    },

    // drop successful
    ondrop: function (event) {
        console.log(event);
    }
});



</g:javascript>
</body>
</html>