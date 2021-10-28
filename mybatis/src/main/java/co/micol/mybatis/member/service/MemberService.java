package co.micol.mybatis.member.service;

import java.util.List;

//DAO(ServiceImpl=Model)에서 사용할 인터페이스
public interface MemberService {
	//CRUD
	//메소드 명과 jsp 페이지명은 같아아한다. memberInsert() == memberInsert.jsp
	List <MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	//로그인 체크
	MemberVO memberLogin(MemberVO vo);
}
