package atmApp;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection_Provider {
	private static Connection con = null;
	static {
		try {
			Class.forName(Provider.DRIVER);
			con = DriverManager.getConnection(Provider.CONNECTION_URL,Provider.USERNAME,Provider.PASSWORD);	
		} catch (Exception e) {
			System.out.print(e);
		}
	}
	public static Connection getCon() {
		return con;
	}
}
