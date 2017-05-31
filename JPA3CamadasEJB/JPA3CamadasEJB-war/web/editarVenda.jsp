<%-- 
    Document   : editarVenda
    Created on : 28/05/2017, 19:25:19
    Author     : GUILHERME
--%>

<%@page import="mvc.model.entidades.Produto"%>
<%@page import="java.util.List"%>
<%@page import="mvc.model.entidades.Vendedor"%>
<%@page import="mvc.model.entidades.Venda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% Venda venda = (Venda) request.getAttribute("vendas");
           List<Vendedor> vendedores = (List<Vendedor>)request.getAttribute("vendedores");
           List<Produto> produtos = (List<Produto>)request.getAttribute("produtos");
        %>
        
    </head>
    <body>
        <form action="AtualizarVenda" method="get">
            Vendedor: <select name="IdVendedor">
                <%for (Vendedor v: vendedores){%>
                    <%if(v.getId()== venda.getVendedor().getId()){%>
                    <option value="<%=v.getId()%>" selected> <%=v.getNome()%></option>
                <%}else{%>
                    <option value="<%=v.getId()%>"> <%=v.getNome()%></option>
                <%}}%>
            </select>
            <br>
            Produto: <select name="IdProduto">
                <%for (Produto p: produtos){%>
                <%if(p.getId()== venda.getProduto().getId()){%>
                    <option value="<%=p.getId()%>" selected> <%=p.getNome()%></option>
                <%}else{%>
                    <option value="<%=p.getId()%>"> <%=p.getNome()%></option>
                <%}}%>
            </select>
            <br>
            Valor Venda: <input type="text" name="valorVenda"/>
            <br/>
            <input type="hidden" name="IdVenda" value="<%=venda.getId()%>"/>
            <br/>
            <input type="submit" value="Atualizar"/>
        </form>
    </body>
</html>
