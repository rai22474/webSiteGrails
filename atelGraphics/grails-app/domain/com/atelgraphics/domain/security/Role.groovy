package com.atelgraphics.domain.security

/**
 * Class that represent 
 */
class Role {

	/**
	 * The authority of the role.
	 */
	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
