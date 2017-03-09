package main.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Utilisateurs")
public class Utilisateurs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idUtilisateurs",nullable=false)
	private int id;
	
	@Column(name = "nom", nullable = false)
    private String nom;

	@Column(name = "prenom", nullable = false)
    private String prenom;

	@Column(name = "Mdp", nullable = false)
    private String password;

	@Column(name = "login", nullable = false)
    private String login;
	
	public Utilisateurs(){}
	
	public Utilisateurs(String NAME,String PRENOM,String PASSWORD,String LOGIN){
		this.nom=NAME;
		this.prenom=PRENOM;
		this.password=PASSWORD;
		this.login=LOGIN;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
	
	public int getId(){
		return this.id;
	}
	
	
	
}
