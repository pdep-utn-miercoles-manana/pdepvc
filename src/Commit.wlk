class Commit {

	const property descripcion
	const property cambios = []

	method aplicarEn(unaCarpeta) {
		cambios.forEach { cambio => cambio.aplicarEn(unaCarpeta) }
	}

	method agregarCambio(unCambio) {
		cambios.add(unCambio)
	}

	method afectaArchivoLlamado(unNombre) {
		return cambios.any { cambio => cambio.afectaArchivoLlamado(unNombre) }
	}
	
	method revert() {
		return new Commit(descripcion = "revert " + descripcion, cambios = self.revertirCambios())
	}
	
	method revertirCambios() {
		return cambios.reverse().map { cambio => cambio.revert() }
	}
	
}