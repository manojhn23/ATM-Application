package atmApp;
import java.sql.*;

public class LoginDao {
	static String name=null;
	static int amount=0;
	static int month=0;
	static int year=0;
	static int card_no=0;
	public static boolean login(int c, int p) {
		boolean status=false;
		try {
			Connection con = Connection_Provider.getCon();
			PreparedStatement ps = con.prepareStatement("select * from card where card_no=? and pin=?");
			ps.setInt(1, c);
			ps.setInt(2,p);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			card_no = rs.getInt(1);
			name = rs.getString(2);
			month = rs.getInt(3);
			year = rs.getInt(4);
			amount = rs.getInt(7);
					
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static String getName() {
		return name;
	}
	public static int getCard_no() {
		return card_no;
	}
	public static int getMonth() {
		return month;
	}
	public static int getYear() {
		return year;
	}
	public static int getAmount() {
		return amount;
	}
	

}
