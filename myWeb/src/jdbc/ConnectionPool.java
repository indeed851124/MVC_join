package jdbc;

import java.util.*;
import java.sql.*;


public final class ConnectionPool {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		}
	}
	private ArrayList<Connection> free;
	private ArrayList<Connection> used;
	private String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
	private String user = "scott"; private String password = "itbank";
	private int initialCons = 10;
	private int maxCons = 20;
	private int numCons = 0;
	private static ConnectionPool cp;
	public static ConnectionPool getInstance() {
		try {
			if(cp == null) {
				synchronized (ConnectionPool.class){
					cp = new ConnectionPool();
				}
			}
		}
		catch(SQLException sqle) {
			sqle.printStackTrace();
		}
		return cp;
	}
	private ConnectionPool() throws SQLException{
		free = new ArrayList<Connection>(initialCons);
		used = new ArrayList<Connection>(initialCons);
		
		while(numCons < initialCons) {
			addConnection();
		}
	}
	private void addConnection() throws SQLException{
		free.add(getNewConnection());
	}
	private Connection getNewConnection()throws SQLException{
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		System.out.println("About to connect to " + con);
		++numCons;
		return con;
	}
	public synchronized Connection getConnection() throws SQLException{
		if(free.isEmpty()) {
			while(numCons < maxCons) {
				addConnection();
			}
		}
		Connection _con;
		_con = free.get(free.size()-1);
		free.remove(_con);
		used.add(_con);
		return _con;
	}
	
	public synchronized void releaseConnection(Connection _con) throws SQLException{
		boolean flag = false;
		if(used.contains(_con)) {
			used.remove(_con);
			numCons--;
			flag = true;
		}else {
			throw new SQLException("ConnectionPool" + "에 있지 않네요!!");
		}
		try {
			if(flag) {
				free.add(_con); numCons++;
				
			}else {
				_con.close();
			}
		}catch(SQLException e) {
			try {
				_con.close();
			}catch(SQLException e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public void closeAll() {
		for(int i=0; i<used.size();i++){
			Connection _con = (Connection)used.get(i);
			used.remove(i--);
			try {
				_con.close();
			}catch(SQLException sqle) {
				sqle.printStackTrace();
			}
		}
		for(int i=0;i<free.size();i++) {
			Connection _con = (Connection)free.get(i);
			free.remove(i--);
			try {
				_con.close();
				
			}catch(SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}
	public int getMaxCons() {
		return maxCons;
	}
	public int getNumCons() {
		return numCons;
	}
}
