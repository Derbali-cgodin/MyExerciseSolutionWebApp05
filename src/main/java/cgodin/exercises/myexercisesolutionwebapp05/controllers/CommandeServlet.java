package cgodin.exercises.myexercisesolutionwebapp05.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/commande")
public class CommandeServlet extends HttpServlet {
    // Prix et taxes fixes
    public static final double PRIX_CLAVIER = 50.00;
    public static final double PRIX_SOURIS = 30.00;
    public static final double PRIX_ECRAN = 200.00;
    public static final double TPS = 0.05;
    public static final double TVQ = 0.09975;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //la logique métier
        // Récupération des paramètres et conversion en int
        int quantiteClavier = Integer.parseInt(request.getParameter("quantiteClavier"));
        int quantiteSouris = Integer.parseInt(request.getParameter("quantiteSouris"));
        int quantiteEcran = Integer.parseInt(request.getParameter("quantiteEcran"));

        // Calculs
        double sousTotal =
                quantiteClavier * PRIX_CLAVIER +
                        quantiteSouris * PRIX_SOURIS +
                        quantiteEcran * PRIX_ECRAN;

        double tps = sousTotal * TPS;
        double tvq = sousTotal * TVQ;
        double total = sousTotal + tps + tvq;

        //l'affichage est la responsabilité de la vue JSP resultat.jsp
        request.setAttribute("quantiteClavier", quantiteClavier);
        request.setAttribute("quantiteSouris", quantiteSouris);
        request.setAttribute("quantiteEcran", quantiteEcran);
        request.setAttribute("sousTotal", sousTotal);
        request.setAttribute("tpsTvq", tps + tvq);
        request.setAttribute("total", total);
        //redirection avec URL inchangé
        RequestDispatcher rd = request.getRequestDispatcher("/resultat.jsp");
        rd.forward(request, response);

        //dernière instruction ou enlever cette instruction
        super.doPost(request, response); //commit de la réponse
    }
}
