class Archivo {
	
	var property nombre
	var property contenido

	method es(unNombre) {
		return unNombre.equals(nombre)
	}
	
	method agregarContenido(unContenido) {
		contenido = contenido + unContenido
	}
	
	method sacarContenido(unContenido) {
		if (contenido.endsWith(unContenido)) {
			contenido = contenido.take(contenido.size() - unContenido.size())
		}
	}
		
}