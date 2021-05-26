package com.empresa.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.entity.Docente;
import com.empresa.repository.DocenteRepository;
@Service
public class DocenteServiceImpl implements DocenteService{
	
    @Autowired
	private DocenteRepository repository;
	
	
	@Override
	public List<Docente> listaDocente() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	@Override
	public Docente insertaActualizaDocente(Docente obj) {
		// TODO Auto-generated method stub
		return repository.save(obj);
	}
	@Override
	public void eliminaDocente(int id) {
		// TODO Auto-generated method stub
		repository.deleteById(id);
	}

	@Override
	public Optional<Docente> obtienePorId(int idDocente) {
		// TODO Auto-generated method stub
		return repository.findById(idDocente);
	}

	@Override
	public List<Docente> buscaPorDni(String dni, int idDocente) {
		// TODO Auto-generated method stub
		return repository.findByDniAndIdDocente(dni, idDocente);
	}

	@Override
	public List<Docente> listaPorDni(String dni) {
		// TODO Auto-generated method stub
		return repository.findByDni(dni);
	}
	

}
