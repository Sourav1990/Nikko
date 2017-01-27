package com.niit.webflow.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.nikkobackend.model.BillingAddress;


@Component
public class demohandler {
	 
		public BillingAddress initFlow(){
			return new BillingAddress();
		}
	 
		public String validateDetails(BillingAddress billingAddress,MessageContext messageContext){
			String status = "success";
			if(billingAddress.getAddress1().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"address1").defaultText("Address cannot be Empty").build());
				status = "failure";
			}
			if(billingAddress.getAddress2().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"address2").defaultText("Address cannot be Empty").build());
				status = "failure";
			}
			if(billingAddress.getCity()==null){
				messageContext.addMessage(new MessageBuilder().error().source(
						"city").defaultText("City cannot be Empty").build());
				status = "failure";
			}
			if(billingAddress.getState()==null){
				messageContext.addMessage(new MessageBuilder().error().source(
						"state").defaultText("State cannot be Empty").build());
				status = "failure";
				if(billingAddress.getCountry()==null){
					messageContext.addMessage(new MessageBuilder().error().source(
							"country").defaultText("Country cannot be Empty").build());
					status = "failure";
				}
			}
			return status;
		}
	}

