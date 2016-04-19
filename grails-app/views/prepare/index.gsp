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
</head>
<body>
<div>
    <div class="col-sm-4" style="padding: 10px">
        <div style="padding-bottom: 10px;">
            <h1>Prepáralo a tu Gusto</h1>
            <h4>No dejes de comerlo como más te gusta</h4>
        </div>
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
    <div class="col-sm-8" style="padding: 10px;">
        <div class="col-sm-12">
            <input id="mesa" type="image" src="${createLinkTo(dir:'images',file:'DragAndDrop/mesaMontaje.png')}" />
        </div>
    </div>
</div>
<g:javascript>
    $('#panBag').click(function(){
        alert("Pan Baguette");
    });
    $('#panBla').click(function(){
        alert("Pan Blanco");
    });
    $('#panInt').click(function(){
        alert("Pan Integral");
    });
    $('#panQue').click(function(){
        alert("Pan Queso");
    });
</g:javascript>
</body>
</html>