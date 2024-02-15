package membership;

public class MemberDTO { //member 테이블의 정보를 객체화하여 getter, setter 설정
	private String id;
	private String pass;
	private String name;
	private String regidate;
	
	public MemberDTO() {}
	
	public String getId() {return id;}
	public String getPass() {return pass;}
	public String getName() {return name;}
	public String getRegidate() {return regidate;}
	public void setId(String id) {this.id = id;}
	public void setPass(String pass) {this.pass = pass;}
	public void setName(String name) {this.name = name;}
	public void setRegidate(String regidate) {this.regidate = regidate;}
	
	
}
