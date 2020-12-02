

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    </head>
    <body>

        <nav class="teal">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">&nbsp;&nbsp;Lista de categorias.</a>
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

        <table class="diseno">
            <thead>
                <tr>
                    <th>Clave Categoria</th>
                    <th>Nombre Categoria</th>
                    <th>Descripcion Categoria</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach
                    var="dto" 
                    items="${listaDeCategorias}">
                    <tr>
                        <td>
                            <a class="btn btn-primary btn-xs" href="CategoriaServlet?accion=ver&id=<c:out value='${dto.entidad.idCategoria}'/>" >
                                <c:out value="${dto.entidad.idCategoria}"/>
                            </a>
                        </td>
                        <td>
                            <c:out value="${dto.entidad.nombreCategoria}"/>
                        </td>
                        <td>
                            <c:out value="${dto.entidad.descripcionCategoria}"/>
                        </td>
                        <td>
                            <a class="btn btn-success btn-xs" href="CategoriaServlet?accion=actualizar&id=<c:out value='${dto.entidad.idCategoria}'/>">
                                <td><a class="waves-effect waves-light teal-darken-2 btn">Editar</a></td>
                            </a>
                        </td>
                        <td>
                            <a class="btn btn-danger btn-xs" href="CategoriaServlet?accion=eliminar&id=<c:out value='${dto.entidad.idCategoria}'/>">
                                <td><a class="waves-effect waves-light red btn">Eliminar</a></td>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br><br>
        <section class="container">
            <table class="highlight z-depth-3" style="padding: 50px 35px 30px 35px; border-radius: 20px;">
                <thead>
                    <tr>
                        <th>Identificador Categoria</th>
                        <th>Nombre Categoria</th>
                        <th>Descripcion Categoria</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>

                <tbody>
                <td><a class="black-text" href="CategoriaServlet?accion=ver&id=<c:out value='${dto.entidad.idCategoria}'/>" ><c:out value="${dto.entidad.idCategoria}"/></a></td>
                <td><c:out value="${dto.entidad.nombreCategoria}"/></td>
                <td><c:out value="${dto.entidad.descripcionCategoria}"/></td>
              
                    <a class="" href="CategoriaServlet?accion=actualizar&id=<c:out value='${dto.entidad.idCategoria}'/>">
                        <td><a class="waves-effect waves-light teal-darken-2 btn">Editar</a></td>
                    </a>
                
                <a class="" href="CategoriaServlet?accion=eliminar&id=<c:out value='${dto.entidad.idCategoria}'/>">
                    <td><a class="waves-effect waves-light red btn">Eliminar</a></td>
                </a>
                </tr>
                <tr>

                </tr>
                </tbody>
            </table>
        </section>

        <style>
            .bienvenida{
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }

            .alturaNav{
                height: 70px;
            }

            .welcomeBox{
                display: flex;
                width: 100%;
                align-items:center;
                justify-content: center;
                flex-direction: column;
            }

            .welcomeBoxSon{
                padding: 10px 30px 10px 30px;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;

                border-radius: 20px;
            }

            .textCool{
                font-size: 20px;
            }

            .diseno{
                display: none;
            }
        </style>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.min.js"></script>
</body>
</html>
