package main.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Utilisateurs")
public class UserEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idUtilisateurs")
	private int id;
	
	@Column(name = "nom", nullable = false)
    private String nom;
	
	@Column(name="age")
	private int age;
	
	@Column(name = "profession", nullable = false)
    private String profession;
	
	public UserEntity(){}
	
	public UserEntity(String nom, int age,String profession){
		this.nom=nom;
		this.age=age;
		this.profession=profession;
	}
	
	public int getId(){
		return this.id;
	}
	public void setId(int id){
		this.id=id;
	}
	
	public int getAge(){
		return this.age;
	}
	public void setAge(int age){
		this.age=age;
	}
	
	public String getNom(){
		return this.nom;
	}
	public void setNom(String nom){
		this.nom=nom;
	}
	
	public String getProfession(){
		return this.profession;
	}
	public void setProfession(String profession){
		this.profession=profession;
	}
	
	
}
