package com.desi.bank.email.service;

import java.io.StringWriter;
import java.net.URL;
import java.util.Date;

import javax.activation.DataHandler;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service("ApplicationNotificationServiceImpl")
@Scope("singleton")
public class ApplicationNotificationServiceImpl implements ApplicationNotificationService {
	
	@Autowired
	@Qualifier("mailSender")
	private JavaMailSender mailSender; //mail.jar
	
	@Autowired
	@Qualifier("velocityEngine")
	private VelocityEngine velocityEngine; //velocity
	
	
	@Value("${app.contextpath}")
	private String appContextpath;
	
	
	@Override
	@Async
	public String sendNotificationEmail(){
		//This is code fixed.......to send email using velocity and email api
		  MimeMessage message = mailSender.createMimeMessage();
		  try {
			  
			    InternetAddress fromAddress = new InternetAddress("synergisticit2020@gmail.com", "Desibank Application");
				message.setFrom(fromAddress);
				// message.setSender(new InternetAddress(from));
				message.setRecipients(Message.RecipientType.TO,InternetAddress.parse("synergisticsession17@gmail.com"));
				message.setSubject("Notification regarding application up and running.");
				message.setSentDate(new Date());
				//We have to work on data
				// This mail has 2 part, the BODY and the embedded image
				//multipart is a body of the email
				MimeMultipart multipart = new MimeMultipart("related");
				
				// first part (the html)
				//creating first of of the body of the email
				BodyPart messageBodyPart = new MimeBodyPart();
				//loading vm template
				Template template = velocityEngine.getTemplate("./templates/app-notification.vm");
				//below is used to send data from java to vm template
				VelocityContext velocityContext = new VelocityContext();
				velocityContext.put("year", "2018");
				velocityContext.put("name", "Mr. Synergy");
				//now merge velocityeContext & VM
				StringWriter stringWriter = new StringWriter();
				template.merge(velocityContext, stringWriter);
				System.out.println(" :-"+stringWriter.toString());
		        messageBodyPart.setContent(stringWriter.toString(), "text/html");
		        //final add message inside body of email
		        multipart.addBodyPart(messageBodyPart);
		        // <img src="img/11.jpg"/>
		        ///cid:regards = with image source
		        
		        //Now creating another BodyPart for img
		        messageBodyPart = new MimeBodyPart();
		        //${pageContext.request.contextPath}
		        System.out.println(")#(#*appContextpath(#(*# = "+appContextpath);
		        System.out.println(")#(#*appContextpath(#(*# = "+appContextpath);
		        System.out.println(")#(#*appContextpath(#(*# = "+appContextpath);
		        System.out.println(")#(#*appContextpath(#(*# = "+appContextpath);
		      //localhost:8282/desibank-web/ 
		        messageBodyPart.setDataHandler(new DataHandler(new URL(appContextpath+"/images/11.jpg")));
		         messageBodyPart.setHeader("Content-ID", "<regards>");
		         multipart.addBodyPart(messageBodyPart);
		        
		     // put body of the message inside message
				message.setContent(multipart);
				mailSender.send(message);
			  
			  
		  }catch(Exception ex){
			  ex.printStackTrace();
		  }
		
		return "success";
	}

}
