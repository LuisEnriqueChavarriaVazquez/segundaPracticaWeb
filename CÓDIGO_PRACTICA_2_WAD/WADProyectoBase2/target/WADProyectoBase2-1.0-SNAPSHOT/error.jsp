
<%@page  isErrorPage="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Error</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    </head>
    <body class="red darken-3">


        <div class="row">
            <div class="col s12 m5">
                <h1 class="white-text"><b>Error!!!</b></h1>
                <div class="card-panel white black-text">
                    <span class="black-text">
                        <div class="">
                            <%
                                String de = request.getParameter("de");
                            %>
                            <p>
                                <b>Ocurrio un error en: <%=de%></b>
                            </p>
                            <b>El error es:</b>
                            <p>
                                <%=exception%>
                            </p>
                        </div>
                    </span>
                </div>
            </div>
        </div>
    </body>
</html>
