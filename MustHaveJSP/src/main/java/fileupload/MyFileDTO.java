package fileupload;

public class MyFileDTO {
	private String idx;
	private String name; // 작성자 이름
	private String title; // 제목
	private String cate; // 카테고리
	private String oFile; // 원본 파일명
	private String sFile; // 저장된 파일명
	private String postdate; // 등록 날짜
	
	
	public String getIdx() {return idx;}
	public String getName() {return name;}
	public String getTitle() {return title;}
	public String getCate() {return cate;}
	public String getoFile() {return oFile;}
	public String getsFile() {return sFile;}
	public String getPostdate() {return postdate;}
	
	public void setIdx(String idx) {this.idx = idx;}
	public void setName(String name) {this.name = name;}
	public void setTitle(String title) {this.title = title;}
	public void setCate(String cate) {this.cate = cate;}
	public void setoFile(String oFile) {this.oFile = oFile;}
	public void setsFile(String sFile) {this.sFile = sFile;}
	public void setPostdate(String postdate) {this.postdate = postdate;}
}
