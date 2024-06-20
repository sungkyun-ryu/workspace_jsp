package membership;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import common.JDBConnect;

public class MemberDAO extends JDBConnect {
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);			
	}
	
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO(); 
		String query = "select * from member where id=? and pass=?";
		
		
		try {
			PreparedStatement psmt = getCon().prepareStatement(query); 
			psmt.setString(1, uid); 
			psmt.setString(2, upass);
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
			}
			
			psmt.close();
			rs.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return dto;
	}
}
