package com.greatlearning.customer.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.greatlearning.customer.entities.Customer;

@Service
public interface CustomerService {
	
// CRUD functionalities
// Method to Reterive all customer records	
	public List<Customer> findAll();
	
// Find customer record by using its id
	public Customer findById(int id);
	
// Insert and update method
	public void save(Customer cust);
	
// Delete method
	public void deleteById(int id);

}
