package com.atelgraphics.presentation.security

/**
 * Controller to make the login to the application.
 *
 */
class LoginController {

    def index = { 
		redirect(action: "showLogin", params: params)
	}
	
	
   def showLogin = {
	   render(view: "../security/login")
   }
   
   def login = {
	   render(view: "../security/login")
   }
   
   def register = {
	   render(view: "../security/login")
   }
   
}
