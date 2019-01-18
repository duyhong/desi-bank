package com.desi.bank.rest.api.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import com.desi.bank.common.dao.entity.CustomerQuestionAnswer;
import com.desi.bank.constant.DesiBankConstant;
import com.desi.bank.customer.service.CustomerService;
import com.desi.bank.customer.web.controller.form.CustomerSavingForm;
import com.desi.bank.email.service.ICustomerEmailService;
import com.desi.bank.employee.web.controller.form.ApplicationMessageResponse;
import com.desi.bank.springdata.service.ICityService;
import com.desi.bank.springdata.service.model.CityVO;


@Component
@Path("/customer")
public class BankCustomerRestApi {
	
	
	@Autowired
	@Qualifier("CustomerServiceImpl")
	private CustomerService customerService;
	
	@Autowired
	@Qualifier("CustomerEmailService")
	public ICustomerEmailService customerEmailService;
	
	public BankCustomerRestApi(){
		System.out.println("Pcockco pcock BankCustomerRestApiBankCustomerRestApiBankCustomerRestApi");
		System.out.println("BankCustomerRestApiBankCustomerRestApiBankCustomerRestApi");
		System.out.println("BankCustomerRestApiBankCustomerRestApiBankCustomerRestApi");
		System.out.println("BankCustomerRestApiBankCustomerRestApiBankCustomerRestApi");
	}
	
	@Autowired
	private ICityService cityService;

	//v1/customer/cities
	@Path("/cities")
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<CityVO> loadCities(){
		return cityService.findCities();
	}

	
	
	@Path("/questions/{userId}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<CustomerQuestionResponse> findCustomerSecurityQuestions(@PathParam("userId") String userId) {
        // TODO: it uses Java Class from dao project..... should we change?
		System.out.println("userId userId userId = "+userId);
        List<CustomerQuestionAnswer> questionAnswers = customerService.getSecurityQn(userId);
        List<CustomerQuestionResponse> responses = new ArrayList<CustomerQuestionResponse>();
        for (CustomerQuestionAnswer customerQuestionAnswer : questionAnswers) {
            CustomerQuestionResponse question = new CustomerQuestionResponse();
            question.setId(customerQuestionAnswer.getId());
            question.setQuestion(customerQuestionAnswer.getQuestion());
            responses.add(question);
        }
        return responses;
    }
	
	@Path("/answers")
	@POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public ApplicationMessageResponse unlockAccountVerification(CustomerSQAnswers answers) {
		System.out.println(answers);
        ApplicationMessageResponse applicationMessageResponse = new ApplicationMessageResponse();
        applicationMessageResponse.setStatus(DesiBankConstant.SUCCESS);
        List<CustomerQuestionAnswer> questionAnswers = customerService.getSecurityQn(answers.getUserId());
        for (CustomerQuestionAnswer customerQuestionAnswer : questionAnswers) {
            String customerAnswer = answers.getAnswers().get(customerQuestionAnswer.getId());
            if (!customerQuestionAnswer.getAnswer().equals(customerAnswer)) {
                applicationMessageResponse.setStatus(DesiBankConstant.FAILURE);
                applicationMessageResponse.setMessage("Some answers are incorrect");
                return applicationMessageResponse;
            }
        }
        // send OPT email here
        customerEmailService.sendOptCode(answers.getUserId());
        //this.sendUnlockOTPEmail(answers.getUserId());
        return applicationMessageResponse;
    }
    
	//v1/customer/cities
	/*@Path("/pk-cities")
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public CityWrapper loadCities(){
		CityWrapper cityWrapper=new CityWrapper();
		cityWrapper.setCityVOs(cityService.findCities());
	    return cityWrapper;
	}*/

	@Path("/load-cities")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public ApplicationMessageResponse testt(){
			ApplicationMessageResponse applicationMessageResponse=new ApplicationMessageResponse();
			applicationMessageResponse.setStatus(DesiBankConstant.SUCCESS);
			applicationMessageResponse.setMessage("Hello Nagendra");
			List<CityVO> cityVOs=cityService.findCities();
			for(CityVO cityVO:cityVOs){
				applicationMessageResponse.getCities().add(cityVO.getName());
			}

			return applicationMessageResponse;
	}

	@Path("/testtt")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public ApplicationMessageResponse testtt(){
			ApplicationMessageResponse applicationMessageResponse=new ApplicationMessageResponse();
			applicationMessageResponse.setStatus(DesiBankConstant.SUCCESS);
			applicationMessageResponse.setMessage("Hello Nagendra");
			return applicationMessageResponse;
	}

	@Path("/mock/tt-tcities")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<String> sloadCities(){
		List<String> cities=new ArrayList<>();
		cities.add("Abv");
		cities.add("Ooe");
	    return cities;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Path("/find-cities")
	public GenericEntity<List<String>> stringlist(){
	List<String> cities=new ArrayList<>();
	List<CityVO> cityVOs=cityService.findCities();
	for(CityVO cityVO:cityVOs){
		cities.add(cityVO.getName());
	}
	  return new GenericEntity<List<String>>(cities) {};
	}

	
	//URL for this resource
	//contentpath/v1/customer/app/status?appRefNo=AS0292022
	@Path("/app/status")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public SCustomerSavingForm findCustomerAppStatus(@QueryParam("appRefNo") String appRefNo){
		CustomerSavingForm customerSavingForm=customerService.findCustomerSavingEnquiryByAppRef(appRefNo);
		SCustomerSavingForm customerSavingForm2=new SCustomerSavingForm();
		BeanUtils.copyProperties(customerSavingForm, customerSavingForm2);
		return customerSavingForm2;
	}
	
	
	//web.xml - v1
	// $.getJSON(context+"/v1/customer/find/age?pdate=sdate",function(data){
	@Path("/find/age")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public ApplicationMessageResponse calculateAge(@QueryParam("pdate") String pdate){
			////{"age" : 10}
			 //pdate =2018-07-19
			String tokens[]=pdate.split("-");
			int dobyear=Integer.parseInt(tokens[0]);
			int year = Calendar.getInstance().get(Calendar.YEAR);
			int finalAge=year-dobyear;
			if(finalAge<0){
				finalAge=0;
			}
			ApplicationMessageResponse applicationMessageResponse=new ApplicationMessageResponse();
			applicationMessageResponse.setStatus(DesiBankConstant.SUCCESS);
			applicationMessageResponse.setMessage(finalAge+"");
			return applicationMessageResponse;
	}
	
	
	@Path("/savingRequest")
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public ApplicationMessageResponse rejectSavingSavingAccountRequest(CustomerSavingForm customerSavingForm){
			System.out.println(customerSavingForm);
			customerService.savingAccountRequest(customerSavingForm);
			ApplicationMessageResponse applicationMessageResponse=new ApplicationMessageResponse();
			applicationMessageResponse.setStatus(DesiBankConstant.SUCCESS);
			 return applicationMessageResponse;
	}
	
	@Path("/temp")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public CustomerSavingForm showTemp(){
		System.out.println("_@_magic000000000000000");
		CustomerSavingForm customerSavingForm2=new CustomerSavingForm();
		customerSavingForm2.setEmail("nagen@gmail.com");
		customerSavingForm2.setLocation("India");
		customerSavingForm2.setMobile("+202929292");
		customerSavingForm2.setName("Nagendra!");
		return customerSavingForm2;
	}

}
