package com.hos.Service;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.hos.Entity.Patient;
import com.hos.util.HibernateUtil;

public class PatientService {
	
	public boolean addPatient(Patient patient) {
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
	     try {
	         tx = session.getTransaction();
	         tx.begin();
	         session.saveOrUpdate(patient);       
	         tx.commit();
	     } catch (Exception e) {
	         if (tx != null) {
	             tx.rollback();
	         }
	         e.printStackTrace();
	     } finally {
	         session.close();
	     } 
	     return true;
	}
	
	public List<Patient> getListOfPatients(String type){
        List<Patient> list = new ArrayList<Patient>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            System.out.println("try to get list");
            if(type == "inpatient") {
            	list = session.createQuery("from Patient where type='inpatient'").list();
            }else if(type == "outpatient") {
            	list = session.createQuery("from Patient where type='outpatient'").list();
            }
            System.out.println("Got the list of patient");
                                   
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }

}
