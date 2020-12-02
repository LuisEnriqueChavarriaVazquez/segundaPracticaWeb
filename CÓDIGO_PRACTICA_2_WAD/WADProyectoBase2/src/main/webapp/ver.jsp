
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de la Categoria</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    </head>
    <body>
        <nav class="teal">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">&nbsp;&nbsp;Ver info de categorias.</a>
                <ul class="right hide-on-med-and-down">
                    <li>
                        <a aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="CategoriaServlet?accion=listaCategorias">Lista de Categorias</a>
                    </li>
                    <li>
                        <a href="CategoriaServlet?accion=nuevo">Nuevo</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <br><br>
            <div class="card border-primary mb-3">
                
                <div class="card-body disenoContainer">
                    <div class="card-header">
                        <b><h4>Datos de la categoria</h4></b>
                    </div>
                    <section containerInfo>
                        <div class="row">
                            <div class="col s12 m5">
                                <div class="card-panel teal">
                                    <span class="white-text"><b>Id Categoria:</b> <c:out value="${categoria.entidad.idCategoria}"/>
                    
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12 m5">
                                <div class="card-panel teal">
                                    <span class="white-text"><b>Nombre Categoria:</b> <c:out value="${categoria.entidad.nombreCategoria}"/>
                    
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12 m5">
                                <div class="card-panel teal">
                                    <span class="white-text"><b>Descripción categoria:</b> <c:out value="${categoria.entidad.descripcionCategoria}"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </section>

                   
                </div>
            </div>
        </div>

        <style>
            .containerInfo{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }

            .disenoContainer{
                padding: 20px;
            }
        </style>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.min.js"></script>
    </body>
</html>
