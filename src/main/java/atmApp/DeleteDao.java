package atmApp;
import java.sql.*;

public class DeleteDao {
	public static int deleteAcc(int card_no,int pin) {
		int status=0;
		try {
			Connection con = Connection_Provider.getCon();
			PreparedStatement ps = con.prepareStatement("delete from card where card_no=? and pin=?");
			ps.setInt(1, card_no);
			ps.setInt(2, pin);
			status = ps.executeUpdate();	
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status; 
	}

}
