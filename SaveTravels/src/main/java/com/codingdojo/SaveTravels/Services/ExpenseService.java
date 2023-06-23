package com.codingdojo.SaveTravels.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.SaveTravels.Models.Expense;
import com.codingdojo.SaveTravels.Repositories.ExpenseRepository;

@Service
public class ExpenseService {
	//adding the ExpenseRepository as a dependency
	private final ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	//Returns all the Expenses
	public List<Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	//creates an expense
	public Expense createExpense(Expense e) {
		return expenseRepository.save(e);
	}
	//retrieve an expense
	public Expense findExpense(Long Id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(Id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	//updates an expense
	public Expense updateExpense(Expense e) {
		return expenseRepository.save(e);
	}
	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}
}
