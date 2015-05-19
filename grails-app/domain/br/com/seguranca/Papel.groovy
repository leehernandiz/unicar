package br.com.seguranca

class Papel {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
    String toString(){ authority }
}
