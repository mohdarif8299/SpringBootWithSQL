package com.spring.mvc.controllers;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.spring.mvc.dao.EmployeeDao;
import com.spring.mvc.models.Employee;
@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao employeeDAO;
	/* to save an employee*/
	@PostMapping("/employees")
	public String createEmployee(@ModelAttribute  Employee emp) {
		employeeDAO.save(emp);
		return "confirmation";
	}
	@RequestMapping("/all")
	public String getAll(Model model) {
		List<Employee> list = employeeDAO.findAll();
		model.addAttribute("allemployee",list);
		model.addAttribute("deleted_employee",new Employee());
		return "allemployees";
	}
	@RequestMapping("/")
	public String toHome(Model model) {
		model.addAttribute("employee", new Employee());
		return "index";
	}
	@RequestMapping("/search")
	public String toSearch(Model model) {
		model.addAttribute("employee_search", new Employee());
		return "search";
	}
	/*get all employees*/
	@GetMapping("/employees")
	public List<Employee> getAllEmployees(){
		return employeeDAO.findAll();
	}
	@GetMapping("/update")
	public String toUpdate(Model model) {
		model.addAttribute("employee_update", new Employee());
		return "update";
	}
	/*get employee by empid*/
	@GetMapping("/emp")
	public String  getEmployeeById(Model model,   @RequestParam("id")  Long empid){
		Employee emp=employeeDAO.findOne(empid);
		model.addAttribute("employee_search",emp);
//		if(emp==null) {
//			return ResponseEntity.notFound().build();
//		}
		return "search_result";	
	}
	/*update an employee by empid*/
	@PostMapping("/empupdate")
	public String updateEmployee(Model model,@ModelAttribute Employee employee){
	  employeeDAO.save(employee);
	  model.addAttribute("employee_update",employee);
		return "updateconfirmation";
	}
//	@RequestMapping("/delete")
//	public String deleteEmployee(Model model) {
//		model.addAttribute("deleted_employee",new Employee());
//		return "delete";
//	}
	/*Delete an employee*/
	@RequestMapping("/delete")
	public String deleteEmployee(Model model,@RequestParam("id") Long empid){
		Employee emp=employeeDAO.findOne(empid);
		model.addAttribute("deleted_employee",emp);
		employeeDAO.delete(emp);		
		return "delete";
	}
}
