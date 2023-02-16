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
		
		List<Customer> customers=session.createQuery("from Customer order by lastName").getResultList();
		return customers;
	}



	@Override
	public void saveCustomer(Customer customer) {
		Session current=sessionFactory.getCurrentSession();
		current.saveOrUpdate(customer);
		
	}



	@Override
	@Transactional
	public Customer getCustomer(int theID) {
		Session current=sessionFactory.getCurrentSession();
		Customer cust=current.get(Customer.class,theID);
		
		return cust;
	}



	@Override
	@Transactional
	public void deleteCustomer(int theID) {
		Session current=sessionFactory.getCurrentSession();
		Customer cust=current.get(Customer.class,theID);
		current.delete(cust);
		
	}

}
