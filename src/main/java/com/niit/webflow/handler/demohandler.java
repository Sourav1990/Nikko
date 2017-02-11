package com.niit.webflow.handler;

import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import java.util.UUID;
import com.niit.nikkobackend.model.BillingAddress;
import com.niit.nikkobackend.model.ShippingAddress;

@Component
public class demohandler {

	public BillingAddress initFlow() {
		return new BillingAddress();
	}

	public String validateDetails(BillingAddress billingAddress, MessageContext messageContext) {
		String status = "success";
		if (billingAddress.getAddress1().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("address1").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getAddress2().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("address2").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getCity().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getState().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("state").defaultText("State cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getCountry().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("country").defaultText("Country cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getShp_address1().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("shp_address1").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getAddress2().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("shp_address2").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getCity().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("shp_city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getState().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("shp_state").defaultText("State cannot be Empty").build());
			status = "failure";
		}
		if (billingAddress.getCountry().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("shp_country").defaultText("Country cannot be Empty").build());
			status = "failure";
		}

		return status;

	}

}
