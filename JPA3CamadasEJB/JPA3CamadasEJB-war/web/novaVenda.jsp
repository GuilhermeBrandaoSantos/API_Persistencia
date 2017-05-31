<%-- 
    Document   : novaVenda
    Created on : 28/05/2017, 18:06:20
    Author     : GUILHERME
--%>

<%@page import="mvc.model.entidades.Vendedor"%>
<%@page import="java.util.List"%>
<%@page import="mvc.model.entidades.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Cadastrar Venda</title>
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
            List<Produto> produto = (List<Produto>)request.getAttribute("produto");
            List<Vendedor> vendedores = (List<Vendedor>)request.getAttribute("vendedores");
        %>
        <div class="row">
            <div class="col s12">
                <div class="input-field col s12">
                    <form action="CadastrarVenda" method="get">
                        <h5>Cadastrar Venda</h5>
                        <h6>Vendedor:</h6><select name="IdVendedor">
                            <option value="" disabled selected>Escolha um vendedor</option>
                            <%
                                for (Vendedor v: vendedores){%>
                                <option value="<%=v.getId()%>"> <%=v.getNome()%></option>
                            <%
                                }
                            %>                      
                        </select>

                        <h6>Produto:</h6><select name="IdProduto">
                            <option value="" disabled selected>Escolha um produto</option>
                            <%
                                for (Produto p: produto){%>
                                <option value="<%=p.getId()%>"> <%=p.getNome()%></option>
                            <%
                                }
                            %>                      
                        </select>

                        <h6>Valor da venda R$:</h6><input type="text" name="valorVenda" placeholder="Ex: 120.00" />
                        <div class="button">
                            <button class="waves-effect waves-light btn"><i class="material-icons right">save</i>Cadastar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function() {
                $('select').material_select();
            });
        </script>
    </body>
</html>
