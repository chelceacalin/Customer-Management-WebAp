package com.customerTracker.dao;

import java.util.List;

import com.customerTracker.work.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);



}
