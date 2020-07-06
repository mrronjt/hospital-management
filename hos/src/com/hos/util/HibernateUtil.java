package com.hos.util;

import org.hibernate.classic.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory sessionFactory;
	 
    static {
        try {
        	Configuration cfg = new Configuration();
    		cfg.configure("Hibernate-cfg.xml");
    		System.out.println("Configuration Object Created Successfully");
    		sessionFactory = cfg.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
 
    public static Session openSession() {
        return sessionFactory.openSession();
    }

}
