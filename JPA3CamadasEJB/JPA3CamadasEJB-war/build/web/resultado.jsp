<%-- 
    Document   : resultado
    Created on : 27/05/2017, 21:24:06
    Author     : GUILHERME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Resultado</title>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="plugin/materialize/css/materialize.css">
        <link rel="stylesheet" href="plugin/materialize/css/materialize.min.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/result.css">
        <script type="text/javascript" src="plugin/jquery/jquery-3.2.0.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <%
            String opcao = null;
            
            if (request.getAttribute("opcao") !=null) {
                    opcao = (String)request.getAttribute("opcao");
                }
        %>
    </head>
    <body>
        <div class="row">
            <div class="col s12">
                <h3>${mensagem}</h3>
                
                <% 
                    if (opcao == null) {
                %>
                
                <a href="cadastrarVendedor.html" class="waves-effect waves-light btn"><i class="material-icons right">add_circle</i>Novo Vendedor</a>
                <a href="ListarVendedores" class="waves-effect waves-light btn"><i class="material-icons right">list</i>Listar Vendedores</a>
                
                <%
                    }else if(opcao.equals("produto")){
                %>

                <a href="cadastrarProduto.html" class="waves-effect waves-light btn"><i class="material-icons right">add_circle</i>Novo Produto</a>
                <a href="ListarProdutos" class="waves-effect waves-light btn"><i class="material-icons right">list</i>Listar Produtos</a>

                <%
                    }else if(opcao.equals("venda")){
                %>

                <a href="IniciarVenda.jsp" class="waves-effect waves-light btn"><i class="material-icons right">add_circle</i>Nova Venda</a>
                <a href="ListarVendas" class="waves-effect waves-light btn"><i class="material-icons right">list</i>Listar Vendas</a>

                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
