package com.desi.bank.rest.api.admin;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.desi.bank.admin.service.AdminService;
import com.desi.bank.employee.web.controller.form.ApplicationMessageResponse;

/**
 * 
 * @author Nagendra
 * @Since 19-Sept-2018
 *
 */
@Component
@Path("/admin")
public class BankAdminRestApi {
	

	@Autowired
	@Qualifier("adminServiceImpl")
	public AdminService adminService;
	
	/**
	 * 
	 * @param userid
	 * @param status
	 * @return
	 */
	@Path("/lock-unlock")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public ApplicationMessageResponse calculateAge(@QueryParam("userid") String userid,@QueryParam("status") String status){
			String dstatus=adminService.updateLockStatus(userid, status);
			ApplicationMessageResponse applicationMessageResponse=new ApplicationMessageResponse();
			applicationMessageResponse.setStatus(dstatus);
			applicationMessageResponse.setMessage(status.equals("yes")?"Employee with id"+userid+" has been locked":"Employee with id"+userid+" has been unlocked");
			return applicationMessageResponse;
	}
	
	
}	