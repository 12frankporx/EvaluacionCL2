package com.empresa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.empresa.entity.Docente;

public interface DocenteRepository extends JpaRepository<Docente,Integer>{
	
	public abstract List<Docente> findByDniAndIdDocente(String dni, int idDocente);
	public abstract List<Docente> findByDni(String dni);
}
