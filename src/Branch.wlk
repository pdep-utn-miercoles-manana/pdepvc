class Branch {

	const property commits = []
	const property colaboradores = []

	method checkout() {
		commits.forEach { commit => commit.aplicar() }
	}

	method agregarCommit(unCommit) {
		commits.add(unCommit)
	}

	method log(unNombre) {
		return commits.filter { commit => commit.afectaArchivoLlamado(unNombre) }
	}

}