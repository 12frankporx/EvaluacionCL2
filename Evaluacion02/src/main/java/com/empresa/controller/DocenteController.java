package com.empresa.controller;

import java.security.Provider.Service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.empresa.entity.Categoria;
import com.empresa.entity.Docente;
import com.empresa.service.CategoriaService;
import com.empresa.service.DocenteService;
import com.empresa.util.Constantes;

@Controller
public class DocenteController {
	
	@Autowired
	private DocenteService docenteService;

	@Autowired
	private CategoriaService categoriaService;
	
	@RequestMapping("/verCrudDocente")
	public String VerInicio() {
		return "crudDocente";
	}
	@ResponseBody
	@RequestMapping("/listaCategoria")
	public List<Categoria> listaCategoria(){
		return categoriaService.listaCategoria();
	}
	
	@ResponseBody
	@RequestMapping("/listaDocente")
	public List<Docente> listaDocente(){
		return docenteService.listaDocente();
	}
	
	@ResponseBody
	@RequestMapping("/registraDocente")
	public Map<String, Object> registra(Docente obj){
		Map<String, Object> salida = new HashMap<>();
		try {
			List<Docente> lstDocente = docenteService.listaPorDni(obj.getDni());
			if(CollectionUtils.isEmpty(lstDocente)) {
			Docente objSalida = docenteService.insertaActualizaDocente(obj);
			if (objSalida == null) {
				
				salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
			}else {
				salida.put("mensaje", Constantes.MENSAJE_REG_EXITOSO);
			}
			}else{
				salida.put("mensaje", Constantes.MENSAJE_DNI_YA_EXISTE + obj.getDni());
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
		} finally {
			List<Docente> lista = docenteService.listaDocente();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	
	@ResponseBody
	@RequestMapping("/actualizaDocente")
	public Map<String, Object> actualiza(Docente obj){
		Map<String, Object> salida = new HashMap<>();
		try {
			List<Docente> lstDocente = docenteService.buscaPorDni(obj.getDni(), obj.getIdDocente());
			if(CollectionUtils.isEmpty(lstDocente)) {
				Docente objSalida=docenteService.insertaActualizaDocente(obj);
				if (objSalida == null) {
					salida.put("mensaje", Constantes.MENSAJE_ACT_ERROR);
				}else {
					salida.put("mensaje", Constantes.MENSAJE_ACT_EXITOSO);
				}
			}else{
				salida.put("mensaje", Constantes.MENSAJE_DNI_YA_EXISTE + obj.getDni()); 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ACT_ERROR);
		} finally {
			List<Docente> lista = docenteService.listaDocente();
			salida.put("lista", lista);
		}
		return salida;
	}

	
	@ResponseBody
	@RequestMapping("/eliminaCrudDocente")
	public Map<String, Object> elimina(int id){
		Map<String, Object> salida = new HashMap<>();
		try {
			Optional<Docente> objSalida = docenteService.obtienePorId(id);
			if (objSalida.isPresent()) {
				docenteService.eliminaDocente(id);
				salida.put("mensaje", Constantes.MENSAJE_ELI_EXITOSO);
			}else {
				salida.put("mensaje", Constantes.MENSAJE_ELI_ERROR);
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ELI_ERROR);
		} finally {
			List<Docente> lista = docenteService.listaDocente();
			salida.put("lista", lista);
		}
		return salida;
	}
	
}
