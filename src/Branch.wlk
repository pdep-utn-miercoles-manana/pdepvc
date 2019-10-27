class Branch {

	const property carpeta
	const property commits = []

	method checkout() {
		commits.forEach { commit => commit.aplicarEn(carpeta) }
	}

	method agregarCommit(unCommit) {
		commits.add(unCommit)
	}

	method log(unNombre) {
		return commits.filter { commit => commit.afectaArchivoLlamado(unNombre) }
	}

}