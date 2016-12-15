<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Registrasi Mata Kuliah</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    </head>
    <body>        
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}">Sistem Dosen dan Matakuliah</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/">Dosen</a></li>
                        <li><a href="${pageContext.request.contextPath}/mata-kuliah">Mata Kuliah</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Container -->
        <div class="container" style="padding-top: 60px;">
            <form class="form-horizontal" id="form1" method="POST" action="${pageContext.request.contextPath}/simpan-mata-kuliah">
                <fieldset>

                    <legend>Mata Kuliah</legend>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Kode Mata Kuliah</label>  
                        <div class="col-md-4">
                            <input id="nama" name="kodematakuliah" placeholder="Kode" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama Mata Kuliah</label>  
                        <div class="col-md-4">
                            <input id="nama" name="namamatakuliah" placeholder="Nama" class="form-control input-md" type="text">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">ID Dosen</label>  
                        <div class="col-md-4">
                            <input id="nama" name="dosen.iddosen" placeholder="ID Dosen" class="form-control input-md" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="col-md-4">
                            <button id="simpan" type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        <!-- End of Container -->
        
        <div class="container">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Kode Mata Kuliah</th>
                        <th>Nama Mata Kuiah</th>
                        <th>Nama Dosen</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${matakuliahs}" var="matakuliah">
                        <tr>
                            <td>${matakuliah.kodematakuliah}</td>
                            <td>${matakuliah.namamatakuliah}</td>
                            <td>${matakuliah.dosen.namadosen}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <footer class="footer">
            <div class="container">
                <p class="text-muted">JavaEE - UBL 2016</p>
            </div>
        </footer>
    </body>
</html>
