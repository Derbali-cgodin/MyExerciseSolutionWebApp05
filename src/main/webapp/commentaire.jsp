<%--
  Created by IntelliJ IDEA.
  User: Personal
  Date: 2025-04-10
  Time: 2:07 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>JSP - Commentaire</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-GnfkB8MYyIYwljQrBmfxyk4xwhYEW6L3NMbTZ/6QZMRq2UYekU4xGjKR+cUkk5qD" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
  <h2>Laissez votre commentaire</h2>
  <form action="commentaire" method="post">
    <div class="mb-3">
      <label for="nom" class="form-label">Nom :</label>
      <input type="text" name="nom" id="nom" class="form-control" required>
    </div>
    <div class="mb-3">
      <label for="commentaire" class="form-label">Commentaire :</label>
      <textarea name="commentaire" id="commentaire" rows="4" class="form-control" required></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Envoyer</button>
  </form>
  <br>
  <%
    if(request.getAttribute("contientMotInterdit") != null) {
      boolean contientMotInterdit = (boolean) request.getAttribute("contientMotInterdit");
      String nom = request.getParameter("nom");
      String commentaire = request.getParameter("commentaire");
      if(contientMotInterdit) {
  %>
  <h3 class="text-danger">Votre commentaire contient un mot inapproprié et ne sera pas publié.</h3>
  <%
      }else{
  %>
  <h3>Merci<%=nom%> pour votre commentaire :</h3>
  <blockquote style='border-left: 3px solid #ccc; padding-left: 1rem; color: #555;'><%=commentaire%></blockquote>
  <%
      }
    }
  %>
</div>
</body>
</html>
