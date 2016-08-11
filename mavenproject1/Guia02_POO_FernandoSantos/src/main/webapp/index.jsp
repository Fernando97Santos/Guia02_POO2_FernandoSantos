<%-- 
    Document   : index
    Created on : 09-ago-2016, 23:40:00
    Author     : ferna
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

        <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="menu">
                    <ul>
                        <li class="current_page_item"><a href="index.jsp" accesskey="1" title="">Homepage</a></li>
                    </ul>
                </div>
                <div id="logo">
                    <h1><a href="#">Guia 2 POO2</a></h1>
                    <span>Fernando Santos </span> </div>
            </div>
        </div>

        <div id="wrapper2">
            <div id="newsletter" class="container">
                <div class="title">
                    <h2>Agregar Persona</h2>
                </div>
                <div class="content">
                    <h1>${mensAler}</h1>
                    <form method="post" name="frmPers" id="frmPers" action="PersServ">
                        <div class="row">
                            <input type="hidden" name="CodiPers" value="${CodiPers}"/>
                            <div class="column1" >
                                <label>Nombre:</label>
                                <input type="text" class="text" id="NombPers" name="NombPers" placeholder="Nombre" value="${NombPers}"/>
                            </div>
                            <div class="column4">
                                <label>Apellido:</label>
                                <input type="text" class="text" id="ApelPers" name="ApelPers" placeholder="Apellido" value="${ApelPers}"/>
                            </div>
                            <div class="column1">
                                <label>Tipo:</label>
                                <select name="cmbCodiTipoPers">
                                   <%/*<jsp:useBean id="beanCodiTipoPers" class="com.sv.udb.controlador.TipoPersonaCtrl" scope="page"/>
                                    <c:forEach items="${beanCodiTipoPers.consTodo()}" var="fila">
                                        <c:choose>
                                            <c:when test="${fila.CodiTipoPers eq cmbCodiTipoPers}">
                                                <option name="CodiTipoPers" id="CodiTipoPers" selected="" value="${fila.CodiTipoPers}">${fila.NombTipoPers}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option name="CodiTipoPers" id="CodiTipoPers"  value="${fila.CodiTipoPers}">${fila.NombTipoPers}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>*/%>
                                </select>
                            </div>
                            <div class="column4">
                                <label>Genero:</label>
                                <input type="text" class="text" id="GenePers" name="GenePers" placeholder="Genero" value="${GenePers}"/>
                            </div>
                            <div class="column1">
                                <label for="date1">Fecha de nacimiento:</label>
                                <input type="date" class="text" name="FechNaciPers" id="FechNaciPers"  placeholder="00000000-0" value="${FechNaciPers}">
                            </div>
                            <div class="column4">
                                <label>DUI:</label>
                                <input type="number" class="text" id="GenePers" name="DuiPers" placeholder="00000000-0" value="${DuiPers}"/>
                            </div>
                            <div class="column1">
                                <label>NIT:</label>
                                <input type="number" class="text" id="GenePers" name="NitPers" placeholder="NIT" value="${NitPers}"/>
                            </div>
                            <div class="column4">
                                <label>Tipo de sangre:</label>
                                <input type="text" class="text" id="TipoSangPers" name="TipoSangPers" placeholder="Tipo de sangre" value="${TipoSangPers}"/>
                            </div>
                            <div class="column1">
                                <label>Ubicacion:</label>
                                <select class="browser-default" name="cmb2" id="cmb2">
                                   <jsp:useBean id="beanCodiUbic" class="com.sv.udb.controlador.UbicacionCtrl" scope="page"/>
                                    <c:forEach items="${beanCodiUbic.consTodo()}" var="fila">
                                        <c:choose>
                                            <c:when test="${fila.coditipopers eq cmb2}">
                                                <option name="CodiUbic" id="CodiUbic" selected="" value="${fila.CodiUbic}">${fila.NombUbic}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option name="CodiUbic" id="CodiUbic"  value="${fila.CodiUbic}">${fila.NombUbic}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="column4">
                                <label>Fecha de alta:</label>
                                <input type="date" class="text" name="FechAlta" id="FechAlta"  value="${FechAlta}">
                            </div>
                            <div class="column1">
                                <label>Fecha de baja:</label>
                                <input type="date" class="text" name="FechBaja" id="FechBaja"  value="${FechBaja}">
                            </div>
                            <div class="column4">
                                <label>NIT:</label>
                                <input type="number" class="text" id="EstaPers" name="EstaPers" placeholder="Estado" value="${EstaPers}"/>
                            </div>
                            
                            <div class="column1">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Guardar"/>
                            </div>
                            <div class="column4">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Modificar"/>
                            </div>
                            <div class="column2">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Eliminar" onclick="return confirm('¿Estas seguro que deseas eliminar este registro?');"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <div id="copyright">
            <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
