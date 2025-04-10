package cgodin.exercises.myexercisesolutionwebapp05.models.dao;

import cgodin.exercises.myexercisesolutionwebapp05.models.Produit;
import jakarta.persistence.*;

import java.util.List;

public class ProduitDAO {

    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("MyPU");

    public void ajouterProduit(Produit produit) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            em.persist(produit);
            tx.commit();
        } finally {
            if (tx.isActive()) tx.rollback();
            em.close();
        }
    }

    public List<Produit> listerProduits() {
        EntityManager em = emf.createEntityManager();
        List<Produit> produits = em.createQuery("SELECT p FROM Produit p", Produit.class).getResultList();
        em.close();
        return produits;
    }
}
