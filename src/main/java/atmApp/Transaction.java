package atmApp;
import java.sql.*;

public class Transaction {
	public static int payment(int amount,int card_no) {
		int status = 0;
		try {
			Connection con = Connection_Provider.getCon();
			PreparedStatement ps = con.prepareStatement("update card set amount=? where card_no=?");
			ps.setInt(1, amount);
			ps.setInt(2, card_no);
			status = ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}

}
