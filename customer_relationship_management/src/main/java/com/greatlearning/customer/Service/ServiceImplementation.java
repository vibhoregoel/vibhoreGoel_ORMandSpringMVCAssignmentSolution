package com.greatlearning.customer.Service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.customer.entities.Customer;

@Service
public class ServiceImplementation implements CustomerService {

	private SessionFactory sessionFactory;

	private Session session;

	@Autowired
	public ServiceImplementation(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException ex) {
			session = sessionFactory.openSession();
		}
	}

	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		List<Customer> customers = session.createQuery("from Customer").list();
		tx.commit();
		return customers;
	}

	@Override
	@Transactional
	public Customer findById(int id) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		Customer cust = session.get(Customer.class, id);
		tx.commit();
		return cust;
	}

	@Override
	public void save(Customer cust) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(cust);
		tx.commit();

	}

	@Override
	@Transactional
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		Customer cust = session.get(Customer.class, id);
		session.delete(cust);
		tx.commit();

	}

}
