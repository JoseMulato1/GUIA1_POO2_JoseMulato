<%-- 
    Document   : index
    Created on : 08-06-2016, 05:10:40 PM
    Author     : joseph
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>REPORTES</title>
    <!-- Core CSS - Include with every page -->
    <link href="plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    </head>
    <body>
       <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <center><h1>REPORTES</h1></center>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i>REPORTES</a>
                    </li>
                        </ul>
                        <!-- second-level-items -->
                    </div>
            <!-- end sidebar-collapse -->
        </nav>
    
	        <div id="page-wrapper">

            
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            UNIDAD ORGANIZATIVA
                        </div>
                        <div class="collapsible-body">
                              <form class="" method="post" action="Scripts/report1.jsp"target="_blank">
                              <div class="row">
                                  <div class="col s12 m5 l6">
                                      <div class="input-field center-align ">
                                        <select name="cmbUnidad" id="cmbUnidad" class="form-control">
                                        <jsp:useBean id="beanUnidadCtrl" class="com.sv.udb.controlador.UnidadCtrl" scope="page"/>
                                        <c:forEach items="${beanUnidadCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiUnid eq cmbUnidad}">
                                                    <option name="codi_unid" value="${fila.codiUnid}" selected="">${fila.nombUnid}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_unid" value="${fila.codiUnid}">${fila.nombUnid}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="col s12 m12 l3">
                                      <center><br><button class="btn btn-primary" type="submit">Ver Reporte</button></center>
                                  </div>
                              </div>
                              </form>
                          </div>
                                        <br>
                            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                  <div class="panel-heading">
                            VISITA PERSONA
                        </div>
                                      
             <form class="" method="post" action="Scripts/report2.jsp"target="_blank">
                              <div class="row">
                                  <div class="col s12 m7 l6">
                                      <div class="input-field">
                                        <select name="cmbPersona" id="cmbPersona" class="form-control">
                                        <jsp:useBean id="beanPersonaCtrl" class="com.sv.udb.controlador.PersonaCtrl" scope="page"/>
                                        <c:forEach items="${beanPersonaCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiPers eq cmbPersona}">
                                                    <option name="codi_pers" value="${fila.codiPers}" selected="">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_pers" value="${fila.codiPers}">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="col s12 m12 l3">
                                      <center><br><button class="btn btn-primary" type="submit">Ver Reporte</button></center>
                                  </div>
                              </div>
                              </form>               
        </div>
                                        <br>                      
                            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                  <div class="panel-heading">
                            VISITA UNIDAD ORGANIZATIVA POR FECHAS
                        </div>
                                        <div class="col s12 m6 offset-l1 l4">
                                        <form class="" method="post" action="Scripts/report3.jsp"target="_blank">
                                            <label for="date1">Fecha Inicio</label>
                                          <input type="date"class="form-control" name="date1" id="date1">
                                      </div>
                                      <div class="col s12 m6 l4">
                                          <label for="date2">Fecha Fin</label>
                                          <input type="date"class="form-control" name="date2" id="date2">
                                      </div>
                                      <div class="col s12 m12 l3">
                                          <center><br><button class="btn btn-primary" type="submit">Ver Reporte</button></center>
                                      </div>
                                  </div>
                              </form>
        </div>
        <script src="plugins/jquery-1.10.2.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="plugins/pace/pace.js"></script>
    <script src="scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="plugins/morris/morris.js"></script>
    <script src="scripts/dashboard-demo.js"></script>
    </body>
</html>