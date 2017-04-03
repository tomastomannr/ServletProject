package sk.toman.model;

public class LoginModel {
	public boolean checkLogin(String name){
		System.out.println("checkLogin START");
		if(name.equals("aaa")){
			return true;
		}else{
			return false;
		}
	}
}
