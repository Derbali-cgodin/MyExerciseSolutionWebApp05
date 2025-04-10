<%@ page import="cgodin.exercises.myexercisesolutionwebapp05.controllers.CommandeServlet" %><%--
  Created by IntelliJ IDEA.
  User: Personal
  Date: 2025-04-10
  Time: 1:11 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP -Résultat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-GnfkB8MYyIYwljQrBmfxyk4xwhYEW6L3NMbTZ/6QZMRq2UYekU4xGjKR+cUkk5qD" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
    <h2>Résumé de votre commande</h2>

    <table class="table table-bordered mt-4">
        <thead class="table-light">
        <tr>
            <th>Produit</th>
            <th>Quantité</th>
            <th>Prix unitaire</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Clavier</td>
            <td><%=request.getAttribute("quantiteClavier")%></td>
            <td><%=CommandeServlet.PRIX_CLAVIER%></td>
            <td><%= (CommandeServlet.PRIX_CLAVIER * (int)request.getAttribute("quantiteClavier")) %> $</td>
        </tr>
        <tr>
            <td>Souris</td>
            <td><%=request.getAttribute("quantiteSouris")%></td>
            <td><%=CommandeServlet.PRIX_SOURIS%></td>
            <td><%= (CommandeServlet.PRIX_SOURIS * (int)request.getAttribute("quantiteSouris")) %> $</td>
        </tr>
        <tr>
            <td>Écran</td>
            <td><%=request.getAttribute("quantiteEcran")%></td>
            <td><%=CommandeServlet.PRIX_ECRAN%></td>
            <td><%= (CommandeServlet.PRIX_ECRAN * (int)request.getAttribute("quantiteEcran")) %> $</td>
        </tr>
        </tbody>
    </table>

    <div class="mt-3">
        <p><strong>Sous-total :</strong> <%=request.getAttribute("sousTotal")%> $</p>
        <p><strong>TPS (5%) + TVQ (9.975%)  :</strong> <%=request.getAttribute("tpsTvq")%> $</p>
        <p><strong>Total à payer :</strong> <span class="text-primary fw-bold"><%=request.getAttribute("total")%> $</span></p>
    </div>
</div>

</body>
</html>
