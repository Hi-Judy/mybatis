package co.micol.mybatis.member.service;

import java.util.List;

//mybatis에서 사용할 인터페이스
public interface MemberMapper {
	//CRUD
	List <MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	//로그인 체크
	MemberVO memberLogin(MemberVO vo);
}
