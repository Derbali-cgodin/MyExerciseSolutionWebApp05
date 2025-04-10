package cgodin.exercises.myexercisesolutionwebapp05.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/commentaire")
public class CommentaireServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentaire = request.getParameter("commentaire");

        List<String> motsInterdits = Arrays.asList("idiot", "nul", "stupide");
        // Vérification des mots interdits
        boolean contientMotInterdit = motsInterdits.stream()
                .anyMatch(mot -> commentaire.toLowerCase().contains(mot));

        request.setAttribute("contientMotInterdit", contientMotInterdit);
        RequestDispatcher rd = request.getRequestDispatcher("/commentaire.jsp");
        rd.forward(request, response);
    }
}
