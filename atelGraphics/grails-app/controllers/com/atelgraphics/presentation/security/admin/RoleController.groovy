package com.atelgraphics.presentation.security.admin



import com.atelgraphics.domain.security.Role;
import com.atelgraphics.presentation.crud.*

/**
 * Controller for the class Role.
 */
class RoleController extends SingleEntityManagementController {

	/**
	 * @see com.atelgraphics.presentation.crud.SingleEntityManagementController#getEntityClass()
	 */
	def protected getEntityClass(){
		return Role
	}

	/**
	 * @see com.atelgraphics.presentation.crud.SingleEntityManagementController#getEntityName()
	 */
	def protected String getEntityName(){
		return 'role'
	}

	/**
	 * @see com.atelgraphics.presentation.crud.SingleEntityManagementController#createEntityInstance()
	 */
	def protected createEntityInstance(){
		return new Role()
	}

	/**
	 * @see com.atelgraphics.presentation.crud.SingleEntityManagementController#createEntityInstance(java.lang.Object)
	 */
	def protected createEntityInstance(params){
		return new Role(params)
	}
}
