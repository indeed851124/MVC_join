package mvc.control;

public class ActionFactory { //Action��ü�� ���� ���� ������ �� �ֵ��� �ϴ� ActionFactory��� Ŭ������ �����.
	public static ActionFactory factory; //factory�� �̱������� ������ �� �ְ� ����
	private ActionFactory() {}
	public static synchronized ActionFactory getInstance() {
		if(factory == null) {
			factory = new ActionFactory();
			
		}
		return factory;
	}
	public Action getAction(String cmd) { //��Ʈ�ѷ����� ��û�� ���� ���� �����ϴ� �κ�
		Action action = null;
		if(cmd.contentEquals("index")) {
			action = new IndexAction();
		}
		return action;
	}
}
