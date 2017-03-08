package main.java.service;

import java.util.List;
import java.util.logging.Logger;

import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;

import main.java.ejb.UserEJB;
import main.java.entity.UserEntity;
import main.java.error.Error;

@Path("/users")
public class UserService {	
	@EJB
	private UserEJB userEJB;
 	private static final Logger LOGGER = Logger.getLogger(UserService.class.getName());
	private Gson gson = new GsonBuilder().create();
	 
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getUsers(){   	
    	List<UserEntity> users = userEJB.getUsers();
		String loggerMessage = "GET /users";
		Status status = Response.Status.OK;
		String message = gson.toJson(users);
		LOGGER.info(loggerMessage);
    	return Response.status(status)
    					.entity(message)
    					.build();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public Response getUser(@PathParam("id") int id){
		String loggerMessage = "";
    	Status status = null;
    	String message = "";
    	
    	UserEntity user = userEJB.getUser(id);
    	
    	if(user!=null){
    		status=Response.Status.OK;
    		message=gson.toJson(user);
    		loggerMessage = "GET /users{id} - Objet trouve";
    	} else {
    		status=Response.Status.NOT_FOUND;
    		message=gson.toJson(new Error("Erreur aucun utilisateur correspondant",Response.Status.BAD_REQUEST.getStatusCode()));
    		loggerMessage = "Erreur : aucun utilisateur avec cet id ";
    	}
		
    	LOGGER.info(loggerMessage);
		return Response.status(status)
					   .entity(message)
					   .build();
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
	public Response addUser(String userJSON){
		String loggerMessage = "";
    	Status status = null;
    	String message = "";
    	
    	UserEntity user=null;
    	try{
    		new JsonParser().parse(userJSON);
    		user=gson.fromJson(userJSON, UserEntity.class);
    			user = userEJB.addUser(user);	
    			if(user !=null) {
    				loggerMessage = "POST /users - Requête acceptée - Nouvel Utilisateur ajouté : " + user.getId() + " - "+ user.getNom()+" - "+user.getAge()+" - "+user.getProfession();
        			status = Response.Status.OK;
        			message = gson.toJson(user);
    			} else {
    				status = Response.Status.BAD_REQUEST;
    				message=gson.toJson(new Error("Erreur",Response.Status.BAD_REQUEST.getStatusCode()));
    			}
    			
    	} catch (JsonParseException e)
    	{
    		loggerMessage = "POST /users - Requête refusée - " + e;
    		status = Response.Status.BAD_REQUEST;
    		message=gson.toJson(new Error("Erreur : Format de données incorrect ou malformé (JSON requis)",Response.Status.BAD_REQUEST.getStatusCode()));
    	}
    	
    	LOGGER.info(loggerMessage);
    	return Response.status(status)
    				   .entity(message)
    				   .build();
    }
	
	@PUT
	@Path("/{id}")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response updateUser(@PathParam("id") int id, String userJSON) {
		String loggerMessage ="";
		Status status = null;
		String message ="";
		String type="";
		
		UserEntity user = userEJB.getUser(id);
		if(user != null){
			try {
        		new JsonParser().parse(userJSON);
        		user = gson.fromJson(userJSON, UserEntity.class);
           		if (user != null && user.getNom() != null) {
        			user.setId(id);
        			user = userEJB.updateUser(user);
    		    	loggerMessage = "Mise à jour de l'Utilisateur : " + user.getId() + " - " + user.getNom();
    		    	status = Response.Status.OK;
    		    	message = gson.toJson(user);
    		    	type = MediaType.APPLICATION_JSON;
        		}
        		else {
            		loggerMessage = "L'objet reçu ne correspond pas a un Utilisateur";
        			status = Response.Status.BAD_REQUEST;
        			message = gson.toJson(new Error("L'objet reçu ne correspond pas a un Utilisateur",Response.Status.BAD_REQUEST.getStatusCode()));
        		}
        	}
    		catch (JsonParseException e) {
    			loggerMessage = "Requete refusee" + e;
        		status = Response.Status.BAD_REQUEST;
        		message=gson.toJson(new Error("Erreur JSON Requis",Response.Status.BAD_REQUEST.getStatusCode()));
            }
		} else {
    		loggerMessage = "PUT /users/{id} - Objet non trouve : " + id;
    		status = Response.Status.NOT_FOUND;
    		message=gson.toJson(new Error("Erreur aucun utilisateur correspondant",Response.Status.NOT_FOUND.getStatusCode()));
	    	}
	    	
	    	LOGGER.info(loggerMessage);
			return Response.status(status)
						   .entity(message)
						   .type(type)
						   .build();
	}
	
	@DELETE
	@Path("/{id}")
	public Response deleteUser(@PathParam("id") int id) {
		UserEntity user = userEJB.getUser(id);
		String loggerMessage = "";
    	Status status = null;
    	String message = "";
    	
		if(user == null) {
			status=Response.Status.NOT_FOUND;
			message=gson.toJson(new Error("Erreur aucun utilisateur correspondant",Response.Status.NOT_FOUND.getStatusCode()));
			loggerMessage = "DELETE /clients/{id} - Requête refusée - Aucun objet Client avec l'ID n°" + id + " n'a été trouvé";
		} else {
			userEJB.deleteUser(id);
			status = Response.Status.NO_CONTENT;
			message =gson.toJson(new Error("Utilisateur supprime",Response.Status.NO_CONTENT.getStatusCode()));
			loggerMessage = "Utilisateur supprime";
		}
		LOGGER.info(loggerMessage);
		return Response.status(status)
					   .entity(message)
					   .build();
		
	}
	

}
