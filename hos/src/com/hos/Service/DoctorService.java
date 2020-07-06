package com.hos.Service;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.hos.Entity.Doctor;
import com.hos.Entity.Patient;
import com.hos.util.HibernateUtil;

public class DoctorService {
	
	public List<Doctor> getListOfDoctors(){
        List<Doctor> list = new ArrayList<Doctor>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            System.out.println("try to get list");
        	list = session.createQuery("from Doctor").list();
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
