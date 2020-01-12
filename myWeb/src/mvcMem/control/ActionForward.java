package mvcMem.control;

public class ActionForward { //Action이 모든 작업을 끝내고 view해줄 페이지의 경로를 지정하는 것
	private String url;
	private boolean redirect;
	public ActionForward() {}
	public ActionForward(String url) {
		this.url = url;
	}
	public ActionForward(String url, boolean redirect) {
		this.url = url;
		this.redirect = redirect;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
}
