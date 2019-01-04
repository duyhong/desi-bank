package com.desi.bank.employee.web.controller.advice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * 
 * @author Nagendra
 *
 */
@ControllerAdvice
public class GlobalExceptionHandlerAdvice {
	
	@ExceptionHandler(SQLException.class)
    public String handleSQLException(HttpServletRequest request, Exception ex){
         ex.printStackTrace();
        return "database_error";
    }
    
    //@ResponseStatus( reason="GeneralException")
    @ExceptionHandler(Exception.class)
    public String handleIOException(HttpServletRequest request, Exception ex,Model model){
         ex.printStackTrace();
         return "database_error";
    }
	

}
