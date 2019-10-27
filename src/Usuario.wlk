import Branch.*
import Rol.*

class Usuario {

	var rol

	method crearBranch(unosColaboradores) {
		return new Branch(colaboradores = [self] + unosColaboradores)
	}

	method puedeCommitearEn(unaBranch) {
		return rol.puedeCommitearEn(self, unaBranch)
	}

	method hacerAdministradores(unosUsuarios) {
		unosUsuarios.forEach { usuario => rol.haceAdministradorA(usuario) }
	}

	method hacerComun(unUsuario) {
		rol.haceComunA(unUsuario)
	}
	
	method volveteAdministrador() {
		rol = administrador
	}
	
	method volveteComun() {
		rol = comun
	}
	
}