<%--
  Created by IntelliJ IDEA.
  User: Personal
  Date: 2025-04-10
  Time: 2:37 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cgodin.exercises.myexercisesolutionwebapp05.models.dao.ProduitDAO" %>
<%@ page import="cgodin.exercises.myexercisesolutionwebapp05.models.Produit" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>JSP - Liste des produits</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-GnfkB8MYyIYwljQrBmfxyk4xwhYEW6L3NMbTZ/6QZMRq2UYekU4xGjKR+cUkk5qD" crossorigin="anonymous"></script>
</head>
<body>
    <%
        ProduitDAO dao = new ProduitDAO();
        List<Produit> produitList = dao.listerProduits();
    %>
    <div class="container mt-5">
        <h2>Produits enregistrés</h2>
        <a href="ajouterProduit.jsp" class="btn btn-success mb-3">Ajouter un nouveau produit</a>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prix ($)</th>
            </tr>
            </thead>
            <tbody>
            <%
            for(Produit p : produitList) { %>
                <tr>
                    <td><%=p.getId()%></td>
                    <td><%=p.getNom()%></td>
                    <td><%=p.getPrix()%> $</td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>

</body>
</html>
