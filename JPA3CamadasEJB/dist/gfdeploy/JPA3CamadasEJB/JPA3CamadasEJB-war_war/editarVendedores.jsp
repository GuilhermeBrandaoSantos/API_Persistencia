<%-- 
    Document   : editarVendedores
    Created on : 27/05/2017, 22:35:59
    Author     : GUILHERME
--%>

<%@page import="mvc.model.entidades.Vendedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Editar Dados</title>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="plugin/materialize/css/materialize.css">
        <link rel="stylesheet" href="plugin/materialize/css/materialize.min.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/forms.css">
        <script type="text/javascript" src="plugin/jquery/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </head>
    <body>
        <%
            Vendedor v = (Vendedor)request.getAttribute("vendedor");
        %>
        <div class="row">
            <div class="col s12">
                <form  action="AtualizarVendedor" method="get" class="z-depth-5">
                    <input type="hidden" name="id" value="<%=v.getId()%>"/>
                    <h5>Atualizar Dados</h5>
                    <div class="input-field">
                      <i class="material-icons prefix">account_circle</i>
                      <input id="name" type="text" class="validate" name="nome" value="<%=v.getNome()%>">
                    </div>
                    <button class="waves-effect waves-light btn"><i class="material-icons right">save</i>Atualizar</button>
                    <a href="listarTodosVendedores.jsp" class="waves-effect waves-light btn"><i class="material-icons left">navigate_before</i>Voltar</a>
                </form>
            </div>    
        </div>
    </body>
</html>
