package atmApp;
import java.sql.*;

public class RegisterDao {
	public static int register(User u) {
		int status = 0;
		try {
			Connection con = Connection_Provider.getCon();
			PreparedStatement ps = con.prepareStatement("insert into card(card_no, name, month, year, cvv, pin) values (?,?,?,?,?,?)");
			ps.setInt(1, u.getCard_no());
			ps.setString(2, u.getName());
			ps.setInt(3, u.getMonth());
			ps.setInt(4, u.getYear());
			ps.setInt(5, u.getCvv());
			ps.setInt(6, u.getPin());			
			status = ps.executeUpdate();
			System.out.println(status);
			return status;
		}
		catch(Exception e) {
			System.out.println(e+" "+status);
			return 0;
		}
	}
}
