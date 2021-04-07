package persistence.dao;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import persistance.entities.Employe;
import persistence.util.HibernateUtil;


public class EmployeDaoImpl {
	
	public Employe findById(int id) 
	{
		Session s = HibernateUtil.getSessionFactory().openSession();
		
		Employe e = s.get(Employe.class, id);
		s.close();
		return e;
	}
	
	
	public void add(Employe e) {
		 Session s = HibernateUtil.getSessionFactory().openSession(); // Ouvrir une session s

       Transaction tx = s.beginTransaction();// Commencer une transaction

       s.save(e);
       tx.commit();// Valider la transaction
       s.close();// Fermer la session
	}
	
	
	public List<Employe> findAll() 
	{
		  List<Employe> listeEtudiant = new ArrayList<Employe>();

	      Session s = HibernateUtil.getSessionFactory().openSession();

	      listeEtudiant = s.createQuery("from Etudiant").list();

	      return listeEtudiant;
	}
}
