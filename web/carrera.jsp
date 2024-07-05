<%-- 
    Document   : cordinador
    Created on : 2 jul 2024, 16:18:36
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>

<%
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-Control", "must-revalidate");
    response.addHeader("Cache-Control", "no-cache");
    response.addHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);

    String user = "";
    String nombre = "";
    String rol = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("username") == null) {
%>
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Ud. debe autenticarse...!"/>
</jsp:forward>
<%
    } else {
        user = (String) sesion.getAttribute("username");
        nombre = (String) sesion.getAttribute("nombre");
        rol = (String) sesion.getAttribute("rol");
    }
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@latest/font/bootstrap-icons.css">
        <style>
            #fon {
                background-image: url(recursos/imagenes/fondo.png);
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
                min-height: 100vh;
            }

            .logo {
                position: absolute;
                top: -70px;
                left: 0px;
            }

            .nav-item {
                margin-right: 15px;
                color: white;
            }

            .nav-item a {
                color: white;
            }

            .nav-item a:hover {
                text-decoration: underline;
            }

            .nav-item {
                position: relative;
                padding-right: 50px;
                padding-left: 50px;
            }

            .nav-item:not(:last-child) {
                border-right: 1px solid #fff;
                margin-right: 10px;
            }

            .nav-item a {
                color: #fff;
                text-decoration: none;
                text-align: center;
            }

            .text-white::placeholder {
                color: white;
            }

            #jk {
                background-color: yellow;
                width: 1px;
                height: 130px;
            }

            #jl {
                background-color: yellow;
                width: 1px;
                height: 130px;
            }

            #ppp {
                font-size: 4em;
                color: transparent;
                -webkit-text-stroke: 2px white;
            }

            .nav-link.active {
                font-weight: bold;
            }

            .dropdown-menu {
                top: 0;
                left: 100%;
                margin-top: 20px;
            }

            .sidebar {
                background-color: #003366;
                color: white;
                height: 57vh;
                padding-top: 20px;
            }

            .sidebar .option {
                padding: 15px;
                cursor: pointer;
                border-bottom: 1px solid #004080;
                display: flex;
                align-items: center;
            }

            .sidebar .suboption {
                padding: 9px 70px;
                cursor: pointer;
                display: none;
                background-color: #004080;
            }

            .sidebar .option:hover,
            .sidebar .suboption:hover {
                background-color: #72aae2;
            }

            .sidebar .active + .suboption {
                display: block;
            }

            .content {
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.9);
                border-radius: 10px;
                height: 90vh;
            }

            .navbar-nav .dropdown-menu {
                position: absolute;
                will-change: transform;
                top: 100%;
                left: 0;
                margin-top: 0.125rem;
                border: 0;
                border-radius: 0.375rem;
                background-clip: padding-box;
                box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
            }

            .navbar-nav .dropdown-menu a {
                color: black;
                text-decoration: none;
            }

            .navbar-nav .dropdown-menu a:hover {
                color: white;
                background-color: #2588f1;
            }

        </style>
    </head>

    <body id="fon">

        <nav class="navbar border-body" style="background-color: rgba(0, 0, 0, 0.7);">
            <div class="container-fluid">
                <img src="recursos/imagenes/logoupeu.png" alt="Logo" class="d-inline-block align-text-top">

                <div class="d-flex align-items-center">
                    <ul class="navbar-nav d-flex flex-row me-3">
                        <li class="nav-item border-right"><a href="#">Inicio</a></li>
                        <li class="nav-item border-right"><a href="#">Proceso</a></li>
                        <li class="nav-item border-right"><a href="#">Ayuda</a></li>
                        <li class="nav-item border-right"><a href="#">Requisito</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" id="userDropdown"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="bi bi-person"> ${nombre} </i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                                <li><a class="dropdown-item" href="#">Información</a></li>
                                <li><a class="dropdown-item" href="#">Ayuda</a></li>
                                <li><a class="dropdown-item" href="controlsalir">Salir</a></li>
                            </ul>
                        </li>
                    </ul>

                    <form class="d-flex" role="search">
                        <div class="input-group" style="background-color: transparent;">
                            <span class="input-group-text" style="background-color: transparent;">
                                <i class="fas fa-search" style="color: white;"></i>
                            </span>
                            <input type="text" class="text-white form-control" placeholder="Buscar" aria-label="Search"
                                   style="background-color: transparent;">
                        </div>
                    </form>
                </div>
            </div>
        </nav>

        <div class="container-fluid py-3 px-5">
            <div class="row g-3">

                <div class="col-2" style="background-color: #003366;">

                    <div class="row align-items-center justify-content-center my-2 " style="background-color: transparent; ">
                        <div class="col-3" id="jk"></div>
                        <div class="col-6 text-center">
                            <h2 id="ppp">PPP</h2>
                        </div>
                        <div class="col-3" id="jl"></div>
                    </div>

                    <div class="sidebar">
                        <div class="option" onclick="toggleSuboptions(this)">
                            <i class="bi bi-caret-right-fill"></i> Inicio de PPP
                        </div>
                        <div class="suboption">Hoja de datos</div>
                        <div class="suboption">Carta de presentación</div>
                        <div class="suboption">Carta de aceptación</div>

                        <div class="option" onclick="toggleSuboptions(this)">
                            <i class="bi bi-caret-right-fill"></i> Documentación
                        </div>
                        <div class="suboption">Convenio</div>
                        <div class="suboption">Plan PPP</div>

                        <div class="option" onclick="toggleSuboptions(this)">
                            <i class="bi bi-caret-right-fill"></i> Ejecución y evaluación
                        </div>
                        <div class="suboption">Evaluaciones</div>

                        <div class="option" onclick="toggleSuboptions(this)">
                            <i class="bi bi-caret-right-fill"></i> Conclusión
                        </div>
                        <div class="suboption">Informe</div>
                        <div class="suboption">Certificado</div>

                        <div class="option" onclick="toggleSuboptions(this)">
                            <i class="bi bi-caret-right-fill"></i> Reporte
                        </div>
                        <div class="suboption">Generar reporte</div>

                        <div class="option" onclick="toggleSuboptions(this)">
                            <i class="bi bi-caret-right-fill"></i> Configuracion
                        </div>

                        <div class="suboption" onclick="redirectTo('vistas/carrera.jsp')"> Carrera </div>
                        <div class="suboption" onclick="redirectTo('vistas/linea.jsp')"> Linea </div>
                        <div class="suboption" onclick="redirectTo('vistas/plan.jsp')"> Plan </div>
                        <div class="suboption" onclick="redirectTo('vistas/tutores.jsp')"> Tutores</div>
                        <div class="suboption" onclick="redirectTo('vistas/empresa.jsp')"> Empresa</div>


                    </div>

                    <div class="gt">
                        <div class="row p-5">
                            <div class="col">
                                <img src="recursos/imagenes/userlo.png" alt="Profile Image"
                                     style="width: 60px; height: 60px; border-radius: 50%;">
                            </div>
                            <div class="col">
                                <div class="row">
                                    <div class="col"> <h1 style="color: white; font-size: 16px"> ${nombre} </h1></div>
                                    <div class="col"> <h1 style="color: white; font-size: 15px" > ${rol} </h1></div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-10">
                    <div class="content" id="content-area">

                        <div class="container">
                            <h1>Carreras</h1>
                        </div>
                        <hr>
                        <div class="container">
                            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal"
                                    data-bs-whatever="@mdo"> <i class="bi bi-plus"></i> Agregar</button>

                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Registro de Carrera</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">Nombre:</label>
                                                    <input type="text" class="form-control" name="nombre" id="nombre">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">Estado:</label>
                                                    <input type="text" class="form-control" name="estado" id="estado">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">Responsable:</label>
                                                    <input type="text" class="form-control" name="responsable" id="responsable">
                                                </div>

                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                            <button type="button" class="btn btn-primary" id="guardarr">Confirmar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Editar registro de  Carrera</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">Nombre:</label>
                                                    <input type="text" class="form-control" name="nombre" id="nombre_edit">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">Estado:</label>
                                                    <input type="text" class="form-control" name="estado" id="estado_edit">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="recipient-name" class="col-form-label">Responsable:</label>
                                                    <input type="text" class="form-control" name="responsable" id="responsable_edit">
                                                </div>

                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                            <button type="button" class="btn btn-primary" id="editar">Editar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="container mt-5">
                            <table class="table">
                                <thead class="table-light">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">ID</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Estado</th>
                                        <th scope="col">Responsable</th>
                                        <th scope="col">Editar</th>
                                        <th scope="col">Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>


                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

        <script src="recursos/js/jquery-3.7.1.min.js"></script>
        <script src="recursos/js/carrera.js"></script>

        <script>
                            function toggleSuboptions(element) {
                                var suboptions = element.nextElementSibling;
                                while (suboptions && suboptions.classList.contains('suboption')) {
                                    suboptions.style.display = suboptions.style.display === 'block' ? 'none' : 'block';
                                    suboptions = suboptions.nextElementSibling;
                                }
                            }

                            function redirectTo(url) {
                                window.location.href = url;
                            }



        </script>
    </body>
</html>
