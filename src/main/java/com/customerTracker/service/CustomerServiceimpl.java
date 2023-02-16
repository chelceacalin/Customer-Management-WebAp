package com.customerTracker.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.customerTracker.dao.CustomerDAO;
import com.customerTracker.work.entity.Customer;
@Service
public class CustomerServiceimpl implements CustomerService{

	@Autowired
	CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		customerDAO.saveCustomer(customer);
	}

	@Override
	public Customer getCustomer(int theID) {
		// TODO Auto-generated method stub
		return customerDAO.getCustomer(theID);
	}

	@Override
	public void deleteCustomer(int theID) {
		 customerDAO.deleteCustomer(theID);
		
	}

}
