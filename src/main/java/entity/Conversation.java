package main.java.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Conversation")
public class Conversation {
	@Id
	@Column(name="IdConversation")
	int idConversation;
	@Column(name="nombreParticipant")
	int nombreParticipant;
	@Column(name="titreConv")
	String titreConv;
	
	
	public Conversation(){}
	
	public Conversation(int IDCONVERSARTION,int NOMBREPARTICIPANT,String TITRECONV){
		this.idConversation=IDCONVERSARTION;
		this.nombreParticipant=NOMBREPARTICIPANT;
		this.titreConv=TITRECONV;
	}
	
	public int getIdConversation(){
		return this.idConversation;
	}
	
	public int getNombreParticipant() {
		return nombreParticipant;
	}
	public void setNombreParticipant(int nombreParticipant) {
		this.nombreParticipant = nombreParticipant;
	}
	public String getTitreConv() {
		return titreConv;
	}
	public void setTitreConv(String titreConv) {
		this.titreConv = titreConv;
	}
	
	
	
}
