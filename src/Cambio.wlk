class Cambio {

	const property nombreArchivo

	method aplicarEn(unaCarpeta) {
		self.validarseEn(unaCarpeta)
		self.realizarseEn(unaCarpeta)
	}

	method validarseEn(unaCarpeta) {
		if (self.puedeAplicarseEn(unaCarpeta).negate()) {
			throw new CambioException(message = "Carpeta '" + unaCarpeta.nombre() + "': No se puede realizar el cambio en el archivo '" + nombreArchivo + "'")
		}
	}

	method puedeAplicarseEn(unaCarpeta) {
		return unaCarpeta.tiene(nombreArchivo)
	}

	method realizarseEn(unaCarpeta)

}

class Crear inherits Cambio {

	override method puedeAplicarseEn(unaCarpeta) {
		return super(unaCarpeta).negate()
	}

	override method realizarseEn(unaCarpeta) {
		unaCarpeta.crearArchivo(nombreArchivo)
	}

}

class Eliminar inherits Cambio {

	override method realizarseEn(unaCarpeta) {
		unaCarpeta.eliminarArchivo(nombreArchivo)
	}

}

class Agregar inherits Cambio {

	const contenido

	override method realizarseEn(unaCarpeta) {
		unaCarpeta.agregarContenido(nombreArchivo, contenido)
	}

}

class Sacar inherits Cambio {

	const contenido

	override method realizarseEn(unaCarpeta) {
		unaCarpeta.sacarContenido(nombreArchivo, contenido)
	}

}

class CambioException inherits Exception {}

