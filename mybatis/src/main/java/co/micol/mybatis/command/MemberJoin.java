package co.micol.mybatis.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mybatis.comm.Command;
import co.micol.mybatis.member.service.MemberService;
import co.micol.mybatis.member.service.MemberVO;
import co.micol.mybatis.member.serviceImpl.MemberServiceImpl;

public class MemberJoin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//회원가입 처리
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		System.out.println("dddd");
		
		vo.setId(request.getParameter("id")); //페이지에서 입력한 id 값을 받아서 vo에 담기
		vo.setPassword(request.getParameter("password"));
		vo.setName(request.getParameter("name"));
		vo.setAddress(request.getParameter("address"));
		vo.setTel(request.getParameter("tel"));
		vo.setAuthor(request.getParameter("author"));
		
		int n = memberDao.memberInsert(vo);
		String viewPage = null;
		
		System.out.println("dddddS");
		
		if(n != 0) {
			request.setAttribute("message", "환영합니다. 회원가입 성공입니다.");
			viewPage = "member/memberJoinSuccess";
		}else {
			request.setAttribute("message", "아이디 중복체크를 해주세요.");
			viewPage = "member/idCheckForm";
		}
		return viewPage;
	}

}
