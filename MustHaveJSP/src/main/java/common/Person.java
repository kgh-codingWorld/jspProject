package common;

public class Person { //자바 빈즈 규약으로 만든다.
	//기본(default) 패키지 이외의 패키지에 속해야 한다.
	//멤버 변수(속성) 접근지정자로 private으로 선언한다.
	//기본 생성자가 있어야 한다.
	//멤버 변수에 접근할 수 있는 setter/getter 메서드가 있어야 한다.
	//setter/getter 메소드는 접근 지정자로 public을 선언하다.
	
	private String name;
	private int age;
	
	//생성자
	public Person() {}

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	} //추가 생성자 = new Person(이름, 나이);

	public String getName() {return name;}
	public int getAge() {return age;}
	public void setName(String name) {this.name = name;}
	public void setAge(int age) {this.age = age;}
}
