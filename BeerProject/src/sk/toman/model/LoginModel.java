package sk.toman.model;

public class LoginModel {
	public boolean checkLogin(String pass){
		System.out.println("checkLogin START");
		if(pass.equals("aaa")){
			return true;
		}else{
			return false;
		}
	}
}
