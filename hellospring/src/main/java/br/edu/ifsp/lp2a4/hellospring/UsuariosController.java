package br.edu.ifsp.lp2a4.hellospring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.ifsp.lp2a4.hellospring.entidades.Usuario;

@Controller
public class UsuariosController {

	@GetMapping("/usuarios")
	public String index(Model model) {

		model.addAttribute("usuario", Usuario.Todos());

		return "usuarios/list";

	}

	@GetMapping("/usuarios/create")

	public String create() {

		return "usuarios/create";

	}

	@PostMapping("/usuarios")
	public String create(Usuario usuario, Model model) {
		usuario.salvar();
		model.addAttribute("usuario", Usuario.Todos());

		return "usuarios/list";

	}

}
