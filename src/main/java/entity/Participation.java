package main.java.entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Participation")
public class Participation {
	@Id
	@Column(name="idUser")
	private int idUtilisateur;

	@Id
	@Column(name="idConv")
	private int idConv;

	@Id
	@Column(name="idMes")
	private int idMes;
	
	@Id
	@Column(name="listUsers")
	private List<Utilisateurs> listUsers=new ArrayList<Utilisateurs>();
	@Column(name="listConv")
	private List<Conversation> conversation=new ArrayList<Conversation>();
	@Column(name="listMess")
	private List<Message> messages=new ArrayList<Message>();
	
	public Participation(){}
	
	
	
}
