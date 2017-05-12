package br.unipe.web.boot;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import br.unipe.web.dao.UsuarioDAO;
import br.unipe.web.model.UsuarioModel;

public class CustomAuthenticationProvider implements AuthenticationProvider{
	
	 private Logger logger = LoggerFactory.getLogger(this.getClass());
	 
	 @Autowired
	 private UsuarioDAO repositorio;
	 
	    @Override
	    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
	    	
	    	 String name = authentication.getName();
	         String password = authentication.getCredentials().toString();
	         
	         List<UsuarioModel> usuarios = repositorio.findAll();
		 	 if(usuarios.isEmpty()){
		 		 return null;
		 	 }
		 		
		 	 for (UsuarioModel usuarioModel : usuarios) {
		 		 if(usuarioModel.getNome().equals(name) && usuarioModel.getSenha().equals(password)){
		 			List<GrantedAuthority> grantedAuths = new ArrayList<GrantedAuthority>();
		            grantedAuths.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		            Authentication auth = new UsernamePasswordAuthenticationToken(name, password, grantedAuths);
		            
		            return auth;
		 		 }
		 	 }
	         return null;
	    }
	 
	    @Override
	    public boolean supports(Class<?> authentication) {
	        return authentication.equals(UsernamePasswordAuthenticationToken.class);
	    }

}
