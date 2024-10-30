package Ch05;

public class SimpleDto {
	private String name;
	private String age;
	private String address;
	
	// 디폴트 생성자
	public SimpleDto() {
		
	}
	// 매개변수 생성자 (모든 인자)
	public SimpleDto(String name, String age, String address) {
		super();
		this.name = name;
		this.age = age;
		this.address = address;
	}
	

	// getter and setter
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	

	// toString()
	
	@Override
	public String toString() {
		return "SimpleDto [name=" + name + ", age=" + age + ", address=" + address + "]";
	}
	
	
	
	

}
