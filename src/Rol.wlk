object administrador {

	method puedeCommitearEn(unUsuario, unaBranch) = true

	method haceComunA(unUsuario) {
		unUsuario.volveteComun()
	}

	method haceAdministradorA(unUsuario) {
		unUsuario.volveteAdministrador()
	}

}

object comun {

	method puedeCommitearEn(unUsuario, unaBranch) = unaBranch.esColaborador(unUsuario)

	method haceComunA(unUsuario) {
		// No hace nada
	}

	method haceAdministradorA(unUsuario) {
		// No hace nada
	}

}

