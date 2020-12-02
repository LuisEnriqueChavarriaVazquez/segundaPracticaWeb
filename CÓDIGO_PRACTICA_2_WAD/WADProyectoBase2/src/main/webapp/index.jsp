

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    </head>
    <body>
        <div>

            <nav class="teal">
                <div class="nav-wrapper">
                    <a href="#" class="brand-logo">&nbsp;&nbsp;Categorias.</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li>
                            <a aria-current="page" href="#">Home</a>
                        </li>
                        <li>
                            <a href="CategoriaServlet?accion=listaCategorias">Lista de Categorias</a>
                        </li>
                    </ul>
                </div>
            </nav>
            
            <section class="welcomeBox">
            <h4 class="teal-text text-darken-4"><b>Bienvenido al gestor de Categorias.</b></h4><br>
            <div class="z-depth-3 welcomeBoxSon">
                <div><img src="https://www.wpmon.es/contenido-web/uploads/2018/10/categoriasent.jpg" width="300px"></div>
                <br><br>
                <div><p class="textCool"><b>Gestione de manera efectiva</b> las mutiples categorias.</p></div>
            </div>
        </section>
        
        <br><br>
        <section class="bienvenida">
            <a href="CategoriaServlet?accion=listaCategorias" class="pulse waves-effect waves-light btn-large teal darken-4">Ir a la lista de categorias.</a>
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
        </style>
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.min.js"></script>
    </body>
</html>
