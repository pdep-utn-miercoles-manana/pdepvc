import Archivo.*

class Carpeta {

	var property nombre

	const property archivos = []

	method tiene(unNombreArchivo) {
		return archivos.any{ archivo => archivo.nombre().equals(unNombreArchivo) }
	}

	method crearArchivo(unNombre) {
		archivos.add(new Archivo(nombre = unNombre, contenido = ""))
	}

	method eliminarArchivo(unNombre) {
		archivos.remove(self.archivoLlamado(unNombre))
	}
	
	method agregarContenido(unNombre, unContenido) {
		self.archivoLlamado(unNombre).agregarContenido(unContenido)
	}
	
	method sacarContenido(unNombre, unContenido) {
		self.archivoLlamado(unNombre).sacarContenido(unContenido)
	}
	
	method archivoLlamado(unNombre) {
		return archivos.find { archivo => archivo.es(unNombre) }
	}

}

