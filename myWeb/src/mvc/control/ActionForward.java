package mvc.control;

public class ActionForward {

	private String url; //이동페이지를 저장할 변수
	private boolean redirect; //true면 리다이렉트 false면 디스패치
	public ActionForward() {
		
	}
	public ActionForward(String url) {
		this.url=url;
	}
	
	public ActionForward(String url, boolean redirect) {
		this.url= url; 
		this.redirect = redirect;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	
}

