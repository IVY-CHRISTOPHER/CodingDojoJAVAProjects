package com.codingdojo.SaveTravels.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.SaveTravels.Models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	//Retrieves all books
	List<Expense> findAll();
	//Finds all the Expenses that match the search
	List<Expense> findByDescriptionContaining(String search);
}