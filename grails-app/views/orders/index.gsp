<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 19/04/2016
  Time: 4:09 PM
--%>

<%@ page import="MatchFoodLogin.Producto" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="body">
    <h1>Lista de productos</h1>
    <g:if test="${flash.message}">
        <div class="message">
            ${flash.message}
        </div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="id_producto" title="Id Producto" />

            <!-- <g:sortableColumn property="detalles" title="Detalles" /> -->

            <g:sortableColumn property="precio_producto" title="Precio" />

            <th></th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${ListarPedidos}">
            <tr>

                <td>${it.id_producto?.encodeAsHTML()}</td>

                <td>${it.precio_producto?.encodeAsHTML()}</td>

                <td class="actionButtons">
                    <span class="actionButton"><g:link action="shoppingCart" id="${it.id_producto}" event="chooseProducto">Buy</g:link></span>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="paginateButtons">
        <g:paginate total="${Producto.count()}" />
    </div>
</div>
</body>
</html>