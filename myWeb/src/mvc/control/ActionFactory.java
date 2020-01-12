package mvc.control;

public class ActionFactory { //Action객체를 통해 모델을 선택할 수 있도록 하는 ActionFactory라는 클래스를 만든다.
	public static ActionFactory factory; //factory를 싱글톤으로 가져올 수 있게 설정
	private ActionFactory() {}
	public static synchronized ActionFactory getInstance() {
		if(factory == null) {
			factory = new ActionFactory();
			
		}
		return factory;
	}
	public Action getAction(String cmd) { //컨트롤러에서 요청을 받은 모델을 생성하는 부분
		Action action = null;
		if(cmd.contentEquals("index")) {
			action = new IndexAction();
		}
		return action;
	}
}
