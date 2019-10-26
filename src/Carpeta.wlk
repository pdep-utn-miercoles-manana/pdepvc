class Carpeta {
	
	var property nombre
	
	const property archivos = []
	
	method tiene(unNombreArchivo) {
		return archivos.any { archivo => archivo.nombre().equals(unNombreArchivo) }
	}
		
}