package br.unipe.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.unipe.web.boot.WebSecurityConfig;
import br.unipe.web.dao.UsuarioDAO;
import br.unipe.web.model.UsuarioModel;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	private UsuarioDAO repositorio;
	
	@RequestMapping("/")
	public String exibeLogin(){
			
		return "login";
	}
		
	public UsuarioDAO getRepositorio() {
		return repositorio;
	}

	public void setRepositorio(UsuarioDAO repositorio) {
		this.repositorio = repositorio;
	}	

}
