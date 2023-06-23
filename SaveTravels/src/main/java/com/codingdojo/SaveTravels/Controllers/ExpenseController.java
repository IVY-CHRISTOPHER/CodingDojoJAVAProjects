package com.codingdojo.SaveTravels.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.SaveTravels.Models.Expense;
import com.codingdojo.SaveTravels.Services.ExpenseService;

import jakarta.validation.Valid;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;
	
							//Index to show the information about one of the expenses
	@RequestMapping("/expense/{expenseId}")
	public String oneExpense(Model model, @PathVariable("expenseId") Long expenseId) {
		Expense expense = expenseService.findExpense(expenseId);
		
		model.addAttribute("expense",expense);
		
		return "oneexpense.jsp";
	}
							//Main index page displaying the "create an expense" form, and all the expenses.
	@RequestMapping("/expenses")
	public String index(Model model,@ModelAttribute("expense")Expense expense) {
		
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses",expenses);
		
		return "index.jsp";
	}
	@PostMapping("/create")
	public String createExpense(
			@Valid @ModelAttribute("expense")Expense expense,
			BindingResult result){
		if(result.hasErrors()) {
			return "index.jsp";
		}

		expenseService.createExpense(expense);
	return "redirect:/expenses";
	}
	
	@RequestMapping("/expenses/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
        Expense expense = expenseService.findExpense(id);
        model.addAttribute("expense", expense);
        return "/expenses/edit.jsp";
    }
	@RequestMapping(value="/expenses/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("expense", expense);
            return "editexpenses.jsp";
        } else {
            expenseService.updateExpense(expense);
            return "redirect:/expenses";
        }
    }
	@DeleteMapping("/expense/{id}")
    public String destroy(@PathVariable("id") Long id) {
        expenseService.deleteExpense(id);
        return "redirect:/expenses";
    }

}
