package com.customerTracker.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.customerTracker.work.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override	
	public List<Customer> getCustomers() {
		
		Session session=sessionFactory.getCurrentSession();
		
		List<Customer> customers=session.createQuery("from Customer").getResultList();
		return customers;
	}



	@Override
	public void saveCustomer(Customer customer) {
		Session current=sessionFactory.getCurrentSession();
		current.save(customer);
		
	}

}
