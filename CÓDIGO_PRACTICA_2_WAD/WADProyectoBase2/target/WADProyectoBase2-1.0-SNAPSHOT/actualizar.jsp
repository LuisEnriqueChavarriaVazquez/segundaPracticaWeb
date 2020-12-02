<%-- 
    Document   : actualizar
    Created on : 29/11/2020, 04:38:38 AM
    Author     : Luis Enrique
--%>

<%@page import="com.ipn.mx.modelo.dto.CategoriaDTO"%>
<%@page import="com.ipn.mx.modelo.dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

</header>
<!DOCTYPE html>
<html>



    <body class="teal">

        <%
        CategoriaDAO dao = new CategoriaDAO();
        CategoriaDTO dto = new CategoriaDTO();
        dto.getEntidad().setIdCategoria(Integer.parseInt(request.getParameter("id")));
        dto.getEntidad().setNombreCategoria(request.getParameter("nombreCategoria"));
        dto.getEntidad().setDescripcionCategoria(request.getParameter("DescripcionCategoria"));
        
        dao.update(dto);
        response.sendRedirect("listaDeCategorias.jsp");
        %>

        <div class="row container">
            <h3 class="white-text">Actualizar los categoria.</h3>
            <div class="col s12 m12">
                <div class="card-panel white z-depth-4 formContainer">
                    <span class="white-text">
                        <form method="post" action="insertar.jsp" name="frm">
                            <input type="hidden" name="id" id="id"/>
                            <div class="form-group row"> 
                                <label class="col-sm-2 col-form-label"><b>Nombre Categoria</b></label>
                                <div class="col-sm-6">
                                    <input type="text" name="NombreCategoria" id="NombreCategoria" maxlength="20"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"><b>Descripcion de la categoria</b></label>
                                <div class="col-sm-6">
                                    <input type="text" name="NombreCategoria" id="NombreCategoria" maxlength="20"/>
                                </div>
                            </div>
                            <input type="submit" value="Actualizar categoria" class="btn teal white-text pulse" />
                        </form>
                    </span>
                </div>
            </div>
        </div>
    </body>

    <style>
        .container{
            width: 100%;
            height: 300px;

            display: flex;
            align-items: center;
            justify-content: center;

            margin: 50px 100px 30px 100px;
        }

        .formContainer{
            padding: 30px 100px 30px 100px;
            border-radius: 20px;
        }


    </style>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</html>
