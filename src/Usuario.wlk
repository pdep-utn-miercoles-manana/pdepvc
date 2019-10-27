import Branch.*

class Usuario {

	method crearBranch(unosColaboradores) {
		return new Branch(colaboradores = [self] + unosColaboradores)
	}
	
}