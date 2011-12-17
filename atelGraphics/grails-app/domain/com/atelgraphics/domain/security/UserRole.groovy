package com.atelgraphics.domain.security


import org.apache.commons.lang.builder.HashCodeBuilder


/**
 * Relation between user an role. 
 *
 */
class UserRole implements Serializable {

	/**
	 * The user.
	 */
	User user
	
	/**
	 * The rol that has the user.
	 */
	Role role

	boolean equals(other) {
		if (!(other instanceof UserRole)) {
			return false
		}

		other.user?.id == user?.id &&
			other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static UserRole get(long userId, long rolId) {
		find 'from userRol where user.id=:userId and rol.id=:rolId',
			[userId: userId, rolId: rolId]
	}

	static UserRole create(User user, Role role, boolean flush = false) {
		new UserRole(user: user, role: role).save(flush: flush, insert: true)
	}

	static boolean remove(User user, Role role, boolean flush = false) {
		UserRole instance = UserRole.findByUserAndRole(user, role)
		instance ? instance.delete(flush: flush) : false
	}

	static void removeAll(User user) {
		executeUpdate 'DELETE FROM userRol WHERE user=:user', [user: user]
	}

	static void removeAll(Role rol) {
		executeUpdate 'DELETE FROM userRol WHERE rol=:rol', [rol: rol]
	}

	static mapping = {
		id composite: ['role', 'user']
		version false
	}
}
