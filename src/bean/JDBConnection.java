package bean;

import java.sql.*;

public class JDBConnection {
	private final String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final String url = "jdbc:sqlserver://localhost:1433;DatabaseName = SRAA";
	private final String username = "Mystery";
	private final String password = "sql";
	
	private Connection conn = null;

	//加载数据库驱动
	public JDBConnection() {
		try {
			Class.forName(dbDriver).newInstance();
		} catch (Exception e) {
			System.out.println("数据库加载失败！");
		}
	}
	
	//创建数据库连接
	public boolean createConnection() {
		try {
			conn = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("建立数据库连接失败！");
		}
		return true;
	}
	
	//对数据库的增加、修改和删除的操作
	public boolean executeUpdate(String sql) {
		if (conn == null) {
			createConnection();
		}
		
		try {
			Statement stmt = conn.createStatement();
			int iCount = stmt.executeUpdate(sql);
			System.out.println("操作成功，所影响的记录数为："+String.valueOf(iCount));
			
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("操作失败");
			
			return false;
		}
	}
	
	//对数据库的查询操作
	public ResultSet executeQuery(String sql) {
		ResultSet rs;
		
		try {
			if(conn == null) {
				createConnection();
			}
			
			Statement stmt = conn.createStatement();
			try {
				rs = stmt.executeQuery(sql);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("查询失败！");
			return null;
		}
		return rs;
	}
	
	public void closeConnection() {
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("关闭数据库失败！");
			} finally {
				conn = null;
			}
		}
	}
}