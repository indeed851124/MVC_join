package web;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import java.util.*;

public class StudentDAO {

	private Connection getConnection() {
		Connection conn = null;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			conn = ds.getConnection();
		}catch(Exception e) {
			System.err.println("Connection 생성실패");
		
		}
		return conn;
	}
	public boolean idCheck(String id) {
		boolean result = true;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from student where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(!rs.next()) result = false;
		}catch(SQLException sqle) {
			sqle.printStackTrace();
		}finally {
			if(rs!=null) try{rs.close();}catch(SQLException sqle) {}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException sqle2) {}
			if(conn!=null) try{conn.close();}catch(SQLException sqle3) {}
		}
		return result;
		
	}
	
	public Vector<post_codeVO> zipcodeRead(String dong){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector<post_codeVO> vecList = new Vector<post_codeVO>();
		try {
			conn = getConnection();
			String strQuery = "select * from zipcode where dong like '" + dong + "%'";
			pstmt = conn.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				post_codeVO tempPost_code = new post_codeVO();
				tempPost_code.setZipcode(rs.getString("zipcode"));
				tempPost_code.setSido(rs.getString("sido"));
				tempPost_code.setGugun(rs.getString("gugun"));
				tempPost_code.setDong(rs.getString("dong"));
				tempPost_code.setRi(rs.getString("ri"));
				tempPost_code.setBunji(rs.getString("bunji"));
				vecList.addElement(tempPost_code);
			}
		}catch(SQLException sqle) {
			sqle.printStackTrace();
		}finally {
			if(rs != null)try {rs.close();}catch(SQLException sqle1) {}
			if(pstmt != null)try {pstmt.close();}catch(SQLException sqle2) {}
			if(conn != null)try {conn.close();}catch(SQLException sqle3) {}
		}
		return vecList;
	}
	
	public boolean memberInsert(StudentVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			conn = getConnection();
			String strQuery = "insert into student values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getPhone1());
			pstmt.setString(5, vo.getPhone2());
			pstmt.setString(6, vo.getPhone3());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getZipcode());
			pstmt.setString(9, vo.getAddress1());
			pstmt.setString(10, vo.getAddress2());
			int count = pstmt.executeUpdate();
			if(count>0)flag = true;
		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally {
			if(rs != null)try {rs.close();}catch(SQLException sqle1) {}
			if(pstmt != null)try {pstmt.close();}catch(SQLException sqle2) {}
			if(conn != null)try {conn.close();}catch(SQLException sqle3) {}
		}
		return flag;
	}
	
	
}
