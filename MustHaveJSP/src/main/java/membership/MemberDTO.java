package membership;

public class MemberDTO {

	private String id; 
	private String pass; 
	private String name; 
	private String regidate;
	
	public String getId() {
		return id; 
	}
	
	public void setId(String Id) {
		this.id= Id;
	}
	
	public String getPass() {
		return this.pass;
	}
	
	public void setPass(String p) {
		this.pass = p;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String n) {
		this.name = n; 
	}
	
	public String getRegidate() {
		return regidate;
	}
	
	public void setRegidate(String rd) {
		this.regidate = rd;
	}
	
}
