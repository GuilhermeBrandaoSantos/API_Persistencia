<%-- 
    Document   : listarTodosVendedores
    Created on : 27/05/2017, 21:51:08
    Author     : GUILHERME
--%>

<%@page import="java.util.List"%>
<%@page import="mvc.model.entidades.Vendedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Lista - Vendedores</title>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="plugin/materialize/css/materialize.css">
        <link rel="stylesheet" href="plugin/materialize/css/materialize.min.css" type="text/css"/>
        <link rel="stylesheet" typ e="text/css" href="css/tables.css">
        <script type="text/javascript" src="plugin/jquery/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </head>
    <body>
        <div class="row">
            <div class="col s12">
                <div class="table z-depth-5">
                    <%
                        List<Vendedor> vendedores = (List<Vendedor>)request.getAttribute("mensagem");
                        
                        if (vendedores.size()<1) {
                    %>        
                    <h1>Não há vendedores cadastrados</h1>
                    <%
                        }else{
                    %>
                    <table class="centered highlight">
                        <thead>
                            <tr class="tableTitle">
                                <th>Nome</th>
                                <th>Opções</th>
                            </tr>
                        </thead>
                        <%
                            for(Vendedor v : vendedores){
                        %>
                        <tbody>
                            <tr>
                                <td class="nome"><%=v.getNome()%></td>
                                <td>
                                    <a href="ExcluirVendedor?id=<%=v.getId()%>" class="waves-effect waves-light btn"><i class="material-icons right">delete</i> Excluir</a>
                                    <a href="ListarVendedor?id=<%=v.getId()%>" class="waves-effect waves-light btn"><i class="material-icons right">update</i> Atualizar</a>
                                </td>
                            </tr>
                        </tbody>
                        <%
                            }
                        %>
                    </table>
                    <%
                        }
                    %>
                    <div class="button">
                        <a href="cadastrarVendedor.html" class="waves-effect waves-light btn"><i class="material-icons right">add_circle</i>Cadastrar Vendedor</a>
                        <a href="index.html" class="waves-effect waves-light btn"><i class="material-icons left">navigate_before</i>Voltar</a>
                    </div>
                </div>
            </div>
        </div>    
    </body>
</html>
