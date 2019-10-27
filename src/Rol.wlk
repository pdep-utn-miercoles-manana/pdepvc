object administrador {
	method puedeCommitearEn(unUsuario, unaBranch) = true
}

object comun {
	method puedeCommitearEn(unUsuario, unaBranch) = unaBranch.esColaborador(unUsuario)
} 