package bean;

import java.sql.*;

public class JDBConnection {
	private final String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final String url = "jdbc:sqlserver://localhost:1433;DatabaseName = SRAA";
	private final String username = "Mystery";
	private final String password = "sql";
	
	private Connection conn = null;

	//�������ݿ�����
	public JDBConnection() {
		try {
			Class.forName(dbDriver).newInstance();
		} catch (Exception e) {
			System.out.println("���ݿ����ʧ�ܣ�");
		}
	}
	
	//�������ݿ�����
	public boolean createConnection() {
		try {
			conn = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("�������ݿ�����ʧ�ܣ�");
		}
		return true;
	}
	
	//�����ݿ�����ӡ��޸ĺ�ɾ���Ĳ���
	public boolean executeUpdate(String sql) {
		if (conn == null) {
			createConnection();
		}
		
		try {
			Statement stmt = conn.createStatement();
			int iCount = stmt.executeUpdate(sql);
			System.out.println("�����ɹ�����Ӱ��ļ�¼��Ϊ��"+String.valueOf(iCount));
			
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("����ʧ��");
			
			return false;
		}
	}
	
	//�����ݿ�Ĳ�ѯ����
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
			System.out.println("��ѯʧ�ܣ�");
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
				System.out.println("�ر����ݿ�ʧ�ܣ�");
			} finally {
				conn = null;
			}
		}
	}
}