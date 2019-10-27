class Commit {

	const property descripcion
	const property cambios = []

	method aplicarEn(unaCarpeta) {
		cambios.forEach { cambio => cambio.aplicarEn(unaCarpeta) }
	}

	method agregarCambio(unCambio) {
		cambios.add(unCambio)
	}
}