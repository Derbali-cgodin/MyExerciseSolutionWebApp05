package cgodin.exercises.myexercisesolutionwebapp05.controllers;

import cgodin.exercises.myexercisesolutionwebapp05.models.Produit;
import cgodin.exercises.myexercisesolutionwebapp05.models.dao.ProduitDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/ajoutProduit")
public class AjoutProduitServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        double prix = Double.parseDouble(request.getParameter("prix"));

        ProduitDAO dao = new ProduitDAO();
        Produit produit = new Produit(nom, prix);
        dao.ajouterProduit(produit);

        response.sendRedirect("listeProduits.jsp");
    }
}
