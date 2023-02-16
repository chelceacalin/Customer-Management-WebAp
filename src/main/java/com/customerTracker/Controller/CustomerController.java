package com.customerTracker.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customerTracker.dao.CustomerDAO;
import com.customerTracker.dao.CustomerDAOImpl;
import com.customerTracker.work.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerDAO customerDAO;
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		
		//Get customers from Dao
		List<Customer> customers=customerDAO.getCustomers();
		//Ad to the model
		
		theModel.addAttribute("customers",customers);
		
		return "list-customers";
	}
}
