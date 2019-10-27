class Commit {

	const property carpeta
	const property descripcion
	const property cambios = []

	method aplicar() {
		cambios.forEach { cambio => cambio.aplicarEn(carpeta) }
	}

	method agregarCambio(unCambio) {
		cambios.add(unCambio)
	}

	method afectaArchivoLlamado(unNombre) {
		return cambios.any { cambio => cambio.afectaArchivoLlamado(unNombre) }
	}
	
	method revert() {
		return new Commit(descripcion = "revert " + descripcion, cambios = self.revertirCambios(), carpeta = carpeta)
	}
	
	method revertirCambios() {
		return cambios.reverse().map { cambio => cambio.revert() }
	}
	
}