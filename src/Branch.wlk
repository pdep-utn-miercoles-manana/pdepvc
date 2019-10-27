class Branch {

	const property commits = []
	const property colaboradores = []

	method checkout() {
		commits.forEach { commit => commit.aplicar() }
	}

	method log(unNombre) {
		return commits.filter { commit => commit.afectaArchivoLlamado(unNombre) }
	}
	
	method agregarCommit(unCommit) {
		self.validarCommit(unCommit)
		commits.add(unCommit)
	}

	method validarCommit(unCommit) {
		if (unCommit.puedeAgregarseA(self).negate()) {
			throw new BranchException(message = "El commit no puede agregarse a la branch")
		}
	}
	
	method esColaborador(unUsuario) {
		return colaboradores.contains(unUsuario)
	}
	
	method blame(unNombre) {
		return self.log(unNombre).map { commit => commit.autor() }
	}

}

class BranchException inherits Exception {}