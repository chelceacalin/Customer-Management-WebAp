package com.customerTracker.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customerTracker.dao.CustomerDAO;
import com.customerTracker.dao.CustomerDAOImpl;
import com.customerTracker.service.CustomerService;
import com.customerTracker.work.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		//Get customers from Dao
		List<Customer> customers=customerService.getCustomers();
		//Ad to the model
		
		theModel.addAttribute("customers",customers);
		
		return "list-customers";
	}
	
	
	@GetMapping("/showFormForAdd")
	public String showFormCustomerADD(Model theModel) {
		
		Customer cust=new Customer();
		theModel.addAttribute("customer",cust);
		return "customer-form";
		
	}	
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
		
	}
}
