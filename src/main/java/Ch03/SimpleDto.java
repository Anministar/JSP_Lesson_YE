package Ch03;

public class SimpleDto {
	private String name;
	private String age;
	private String addr;
	
	// 기본 생성자
	public SimpleDto() {
		
	}
	// 매개변수 생성자

	public SimpleDto(String name, String age, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
	}
	// Getter and Setter
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
	
	
	

}
