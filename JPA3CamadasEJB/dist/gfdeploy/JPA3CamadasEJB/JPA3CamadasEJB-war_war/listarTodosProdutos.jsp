<%-- 
    Document   : listarTodosProdutos
    Created on : 28/05/2017, 16:19:43
    Author     : GUILHERME
--%>

<%@page import="java.util.List"%>
<%@page import="mvc.model.entidades.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Lista - Produtos</title>
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
                        List<Produto> produtos = (List<Produto>)request.getAttribute("mensagem");
                        
                        if (produtos.size()<1) {
                    %>
                    <h1>Não há produtos cadastrados</h1>
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
                            for(Produto p : produtos){
                        %>
                        <tbody>
                            <tr>
                                <td class="nome"><%=p.getNome()%></td>
                                <td>
                                    <a href="ExcluirProduto?id=<%=p.getId()%>" class="waves-effect waves-light btn"><i class="material-icons right">delete</i> Excluir</a>
                                    <a href="ListarProduto?id=<%=p.getId()%>" class="waves-effect waves-light btn"><i class="material-icons right">update</i> Atualizar</a>
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
                        <a href="cadastrarProduto.html" class="waves-effect waves-light btn"><i class="material-icons right">add_circle</i>Cadastrar Produto</a>
                        <a href="index.html" class="waves-effect waves-light btn"><i class="material-icons left">navigate_before</i>Voltar</a>
                    </div>
                </div>
            </div>
        </div>            
    </body>
</html>
