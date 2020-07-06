package com.hos.Service;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.hos.Entity.Patient;
import com.hos.Entity.Staff;
import com.hos.util.HibernateUtil;

public class StaffService {
	
	public List<Staff> getListOfStaffs(){
        List<Staff> list = new ArrayList<Staff>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            System.out.println("try to get list");
        	list = session.createQuery("from Staff").list();
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
