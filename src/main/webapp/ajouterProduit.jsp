<%--
  Created by IntelliJ IDEA.
  User: Personal
  Date: 2025-04-10
  Time: 2:37 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP - Ajout d'un produit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-GnfkB8MYyIYwljQrBmfxyk4xwhYEW6L3NMbTZ/6QZMRq2UYekU4xGjKR+cUkk5qD" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
    <h2>Ajouter un produit</h2>
    <form action="ajoutProduit" method="post">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom du produit :</label>
            <input type="text" id="nom" name="nom" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="prix" class="form-label">Prix :</label>
            <input type="number" step="0.01" id="prix" name="prix" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>
</body>
</html>
