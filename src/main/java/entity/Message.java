package main.java.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class Message {
	int idMessage;
	String emetteur;
	String contenu;
	Date dateDenvoi;
	
	public Message(){}
	public Message(int idMESSAGE,String Emetteur,String Contenu,Date dateDENVOI){
		this.idMessage=idMESSAGE;
		this.emetteur=Emetteur;
		this.contenu=Contenu;
		this.dateDenvoi=dateDENVOI;
	}
	
	public int getIdMessage(){
		return this.idMessage;
	}
	
	public String getEmetteur(){
		return this.emetteur;
	}
	public void setEmetteur(String Emetteur){
		this.emetteur=Emetteur;
	}
	
	public String getContenu(){
		return this.contenu;
	}
	public void setContenu(String Contenu){
		this.contenu=Contenu;
	}
	
	public Date getDateDenvoi(){
		return this.dateDenvoi;
	}
	
	public void setDateDenvoi(Date DateDenvoi){
		this.dateDenvoi=DateDenvoi;
	}
	
}
