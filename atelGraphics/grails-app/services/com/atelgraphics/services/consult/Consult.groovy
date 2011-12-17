package com.atelgraphics.services.consult

/**
 * Class that represent a consult.
 */
class Consult {

	/**
	 * Field restrictions.
	 */
	static constraints = {
		name(blank:false)
		subject(blank:false)
		email(blank:false)
		message(blank:false)
	}

	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "$name $subject $email $message";
	}
	
	
	/**
	 * The name of the person who makes the consult.
	 */
	String name

	/**
	 * The subject of the consult.
	 */
	String subject

	/**
	 * The email to respond the consult.
	 */
	String email

	/**
	 * The content of the message.
	 */
	String message

	/**
	 * If the requester needs a copy of the message.
	 */
	Boolean sendCopy = false
}