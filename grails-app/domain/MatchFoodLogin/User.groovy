package MatchFoodLogin

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService
//	String document
	String name
	String email
	String address
	String phone
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	User(String name, String email, String address, String phone, String username, String password) {
		this()
		this.name = name
		this.email = email
		this.address = address
		this.phone = phone
		this.username = username
		this.password = password
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
        name blank: false
        email blank: false, unique: true
        address blank: false
        phone blank: false
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}
}
