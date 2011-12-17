package com.atelgraphics.domain.security


/**
 * The user that is register.
 *
 */
class User {

	
	/**
	 * The list of roles thar has this user.
	 */
	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
	
	/**
	 * The name of the user.
	 */
	String username
	
	/**
	 * The password of the user.
	 */
	String password
	
	/**
	 * If the user is enabled.
	 */
	boolean enabled
	
	/**
	 * If the account is expired.
	 */
	boolean accountExpired
	
	/**
	 * IF the account is locked.
	 */
	boolean accountLocked
	
	/**
	 * If password expired.
	 */
	boolean passwordExpired

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}
}
