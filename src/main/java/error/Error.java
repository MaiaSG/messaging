package main.java.error;

public class Error {
	@SuppressWarnings("unused")
	private String message;
	@SuppressWarnings("unused")
	private int code;
	public Error(String message, int code){
		this.message = message;
		this.code=code;
	}
}
