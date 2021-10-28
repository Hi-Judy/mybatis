package co.micol.mybatis.member.service;

import lombok.Getter;
import lombok.Setter;

//Lombok으로 getter, setter 만들자

@Getter
@Setter
public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String address;
	private String tel;
	private String author;
	
}
