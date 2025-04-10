<%--
  Created by IntelliJ IDEA.
  User: Personal
  Date: 2025-04-10
  Time: 12:53 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>JSP -Index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-GnfkB8MYyIYwljQrBmfxyk4xwhYEW6L3NMbTZ/6QZMRq2UYekU4xGjKR+cUkk5qD" crossorigin="anonymous"></script>

  </head>
  <body>
  <div class="container mt-5">
    <h2 class="mb-4">Formulaire de commande</h2>

    <!-- envoie de données pour le Servlet commande pour le traitement -->
    <form action="commande" method="post">
      <!-- Produit 1 -->
      <div class="mb-3 row">
        <label class="col-sm-4 col-form-label">Produit 1 : Clavier</label>
        <div class="col-sm-3">
          <input type="number" name="quantiteClavier" class="form-control" min="0" value="0">
        </div>
      </div>

      <!-- Produit 2 -->
      <div class="mb-3 row">
        <label class="col-sm-4 col-form-label">Produit 2 : Souris</label>
        <div class="col-sm-3">
          <input type="number" name="quantiteSouris" class="form-control" min="0" value="0">
        </div>
      </div>

      <!-- Produit 3 -->
      <div class="mb-3 row">
        <label class="col-sm-4 col-form-label">Produit 3 : Écran</label>
        <div class="col-sm-3">
          <input type="number" name="quantiteEcran" class="form-control" min="0" value="0">
        </div>
      </div>

      <!-- Bouton de soumission -->
      <button type="submit" class="btn btn-primary">Commander</button>
    </form>
  </div>
  </body>
</html>
