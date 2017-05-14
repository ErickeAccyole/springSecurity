package br.unipe.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.unipe.web.dao.ContatoDAO;
import br.unipe.web.model.ContatoModel;

/**
 * @author Rodrigo C. Fujioka
 * @date 28 de abr de 2017
 * @time 17:09:28
 *
 */
@Controller
@RequestMapping("/contato")
public class ContatoController {
	
	@Autowired
	private ContatoDAO repository;

	@RequestMapping("/")
	public String exibeContato(Model model){
		
		List<ContatoModel> contatos = repository.findAll();
		
		model.addAttribute("contatos",contatos);
				
		return "contato/homecontato";
	}
	
	
	@RequestMapping("/delete{id}")
	public String delete(Model model, @RequestParam(value = "id", 
							required = true) int id) {
		repository.delete(id);
		
		return "forward:/contato/";
	}
	
	@RequestMapping("/cadastro")
	public String formContato() {		
		return "contato/formcontato";
	}
	
	@RequestMapping("/adiciona")
	public String adicionaContato(ContatoModel contato) {
			repository.save(contato);
	  return "redirect:/contato/";
	}
	
	@RequestMapping("/viewContato")
	public String viewContato(int id, Model model) {
		ContatoModel contato = repository.findOne(id);
		model.addAttribute("contato", contato);
		
		return "contato/viewContato";
	}

	public ContatoDAO getRepository() {
		return repository;
	}

	public void setRepository(ContatoDAO repository) {
		this.repository = repository;
	}

}
