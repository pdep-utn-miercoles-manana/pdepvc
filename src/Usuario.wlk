import Branch.*

class Usuario {

	var rol

	method crearBranch(unosColaboradores) {
		return new Branch(colaboradores = [self] + unosColaboradores)
	}

	method puedeCommitearEn(unaBranch) {
		return rol.puedeCommitearEn(self, unaBranch)
	}

}