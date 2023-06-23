package kr.or.kosa.dto;

public class MemoDto {
	private String id, email, content;
	
	public MemoDto() {
		// TODO Auto-generated constructor stub
	}

	public MemoDto(String id, String email, String content) {
		super();
		this.id = id;
		this.email = email;
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "MemoDto [id=" + id + ", email=" + email + ", content=" + content + "]";
	}

}

	
/*
id VARCHAR2(20) not null,
email VARCHAR2(20) not null,
content VARCHAR2(100)
*/