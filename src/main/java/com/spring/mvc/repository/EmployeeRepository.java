package com.spring.mvc.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.spring.mvc.models.Employee;
public interface EmployeeRepository extends JpaRepository<Employee,Long> {

}
