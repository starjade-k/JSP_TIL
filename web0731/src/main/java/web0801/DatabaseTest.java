package web0801;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
public class DatabaseTest {
	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	private final String USER = "root";
	private final String PASSWORD = "0000";
	
	public DatabaseTest() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch(Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패함");
		}
	}
	
	public Vector<jdbcBean> getJdbcList(){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<jdbcBean> vlist = new Vector<jdbcBean>();
		
		try {
			conn = DriverManager.getConnection(JDBC_URL,USER,PASSWORD);
			String strQuery = "select * from member";
			stmt = conn.createStatement();
			
			// stmt를 통해 쿼리문을 실하여 결과 값을 받아온다
			rs = stmt.executeQuery(strQuery);
			while(rs.next()) {
				jdbcBean jb = new jdbcBean();
				jb.setUserid(rs.getString("id"));
				jb.setPwd(rs.getString("pwd"));
				jb.setName(rs.getString("name"));
				jb.setEmail(rs.getString("email"));
				jb.setPhone(rs.getString("phone"));
				vlist.add(jb);
			}
		} catch(Exception e) {
			System.out.println("Exception " + e);
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch(SQLException e) {	}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch(SQLException e) {	}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch(SQLException e) {	}
			}
			return vlist;
		}
	}
}	
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		Connection con;
//		
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", 
//					"root","0000");
//			System.out.println("Success");
//		} catch(SQLException ex) {
//			System.out.println("SQLException" + ex);
//		} catch(Exception ex) {
//			System.out.println("Exception : " + ex);
//		}
//	}
//
//}
