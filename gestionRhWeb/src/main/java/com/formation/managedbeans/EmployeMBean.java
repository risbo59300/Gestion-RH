package com.formation.managedbeans;

import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.event.ActionEvent;

import persistance.entities.Employe;
import persistence.dao.EmployeDaoImpl;

@ManagedBean
public class EmployeMBean
{

private List<Employe> listEmp = new ArrayList<>();

private Employe employe = new Employe();

private EmployeDaoImpl edi = new EmployeDaoImpl();

public List<Employe> getListEmp() 
{
	return listEmp;
}

public void setListEmp(List<Employe> listEmp) 
{
	this.listEmp = listEmp;
}

public Employe getEmploye() 
{
	return employe;
}

public void setEmploye(Employe employe) 
{
	this.employe = employe;
}


public EmployeDaoImpl getEdi() {
	return edi;
}

public void setEdi(EmployeDaoImpl edi) {
	this.edi = edi;
}

/**
 * Ajout d'un employé
 * @param e
 */
public void add(ActionEvent e) 
{
	listEmp.add(employe);
	edi.add(employe);
	
}
	
	
}
