package com.atelgraphics.presentation.users.consult

import com.atelgraphics.services.consult.Consult;

/**
 * 
 * Controller to make a consult for a customer.
 */
class ConsultsController {

	
	
		
	/**
	 * Index action redirect to show consult action.
	 */
	def index = {
		redirect(action: "showConsult", params: params)
	}
	
	/**
	 * Method that show the consult form.
	 */
	def showConsult = {		
		render(view: "../users/consults/contact",model:[consult: new Consult()])
	}	
	
	/**
	 * Method that send a consult.
	 */
	def sendConsult = {	
		def consult = new Consult(name:params.name,
			subject:params.subject,
			email:params.email,
			message:params.message,
			sendCopy:params.sendCopy)
	
		consult.validate()
		if (consult.hasErrors()){
			render(view: "../users/consults/contact", model:[consult: consult])
		}else{
			consultService.makeConsult(consult)
		}		
	}
	
	/**
	* Service to make the consult.
	*/
	def consultService
}
