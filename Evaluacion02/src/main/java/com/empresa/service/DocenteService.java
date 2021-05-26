package com.empresa.service;

import java.util.List;
import java.util.Optional;

import com.empresa.entity.Docente;

public interface DocenteService {
	//Listar Docente
	public abstract List<Docente> listaDocente();
	//Actualizar y registrar y Eliminar Docente
	public abstract Docente insertaActualizaDocente(Docente obj);
	//Eliminar Docente
	public abstract Optional<Docente> obtienePorId(int idDocente);
	public abstract void eliminaDocente(int id);
	public abstract List<Docente> buscaPorDni(String dni, int idDocente);
	public abstract List<Docente> listaPorDni(String dni);
}
