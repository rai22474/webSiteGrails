package com.atelgraphics.presentation.security.admin

import com.atelgraphics.domain.security.User;
import com.atelgraphics.presentation.crud.*

/**
 * Controller for the class User.
 */
class UserController extends SingleEntityManagementController{

	/**
	 * @see com.atelgraphics.presentation.crud.SingleEntityManagementController#getEntityClass()
	 */
	def protected getEntityClass(){
		return User
	}

	/**
	 * @see com.atelgraphics.presentation.crud.SingleEntityManagementController#getEntityName()
	 */
	def protected String getEntityName(){
		return "user"
	}
	
	/**
	* @see com.atelgraphics.presentation.crud.SingleEntityManagementController#createEntityInstance()
	*/
   def protected createEntityInstance(){
	   return new User()
   }

   /**
	* @see com.atelgraphics.presentation.crud.SingleEntityManagementController#createEntityInstance(java.lang.Object)
	*/
   def protected createEntityInstance(params){
	   return new User(params)
   }
}
