package br.unipe.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.unipe.web.model.ContatoModel;
import br.unipe.web.model.UsuarioModel;

public interface UsuarioDAO  extends JpaRepository<UsuarioModel, Integer>{

}
