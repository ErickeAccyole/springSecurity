package br.unipe.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import br.unipe.web.dao.UsuarioDAO;
import br.unipe.web.model.UsuarioModel;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
	@Autowired
	private UsuarioDAO repository;
	
	@RequestMapping("/")
	public String exibeUsuario(Model model){
		
		List<UsuarioModel> usuarios = repository.findAll();
		
		model.addAttribute("usuarios",usuarios);
				
		return "usuario/homeUsuarios";
	}
	
	
	@RequestMapping("/delete{id}")
	public String delete(Model model, @RequestParam(value = "id", 
							required = true) int id) {
		repository.delete(id);
		
		return "forward:/usuario";
	}
	
	@RequestMapping("/cadastro")
	public String formUsuario() {		
		return "usuario/formUsuario";
	}
	
	@RequestMapping("/adiciona")
	public String adicionaUsuario(UsuarioModel usuario) {
			repository.save(usuario);
	  return "redirect:/usuario/";
	}
	
	@RequestMapping("/viewUsuario")
	public String viewUsuario(int id, Model model) {
		UsuarioModel usuario = repository.findOne(id);
		model.addAttribute("usuario", usuario);
		
		return "usuario/viewUsuario";
	}
	
	

	public UsuarioDAO getRepository() {
		return repository;
	}

	public void setRepository(UsuarioDAO repository) {
		this.repository = repository;
	}

}
