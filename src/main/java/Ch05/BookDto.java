package Ch05;

public class BookDto {
	private String bookcode;
	private String bookname;
	private String price;
	
	public BookDto() {
		// TODO Auto-generated constructor stub
	}

	public BookDto(String bookcode, String bookname, String price) {
		super();
		this.bookcode = bookcode;
		this.bookname = bookname;
		this.price = price;
	}

	public String getBookcode() {
		return bookcode;
	}

	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "BookDto [bookcode=" + bookcode + ", bookname=" + bookname + ", price=" + price + "]";
	}
	
	
	
	

}
