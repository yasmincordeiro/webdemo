package webdemo.entidades;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

//Esta classe está emulando um repositório de dados no modelo ActiveRecord
public class Usuario {
			
	private int id;
	private String nome;
	private String sobrenome;
	private String idade;
	private String sexo;
	private String telefone;
	private String email;
	
	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	
	
	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}


	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public Usuario(String nome, String sobrenome, String idade, String sexo, String telefone, String email) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.idade = idade;
		this.sexo= sexo;
		this.telefone= telefone;
		this.email= email;
	}
	
	public void salvar() {
		if(this.id == 0) {
			_usuarioSeq++;
			this.setId(_usuarioSeq);
			_UsuariosDict.put(_usuarioSeq, this);
		}else {
			_UsuariosDict.replace(this.getId(), this);
		}
	}
	
	public void remover() {
		_UsuariosDict.remove(this.id);
	}
	
	public static List<Usuario> Todos(){
		return new ArrayList<Usuario>(_UsuariosDict.values());
	}
	
	public static Usuario GetById(int id) {
		return _UsuariosDict.get(id);
	}
	


	
	private static HashMap<Integer, Usuario> _UsuariosDict = new HashMap<>();
	private static int _usuarioSeq = 0;
}
