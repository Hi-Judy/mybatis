package co.micol.mybatis.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mybatis.comm.Command;
import co.micol.mybatis.member.service.MemberService;
import co.micol.mybatis.member.service.MemberVO;
import co.micol.mybatis.member.serviceImpl.MemberServiceImpl;

public class MemberLogin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//로그인 과정
		HttpSession session = request.getSession(); //세션 객체를 불러온다
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
//		vo.setId(session.getAttribute("id")); //세션이 존재할 때 세션값을 가져온다.
		vo.setId(request.getParameter("id")); //페이지에서 입력한 id값을 vo객체에 담는다.
		vo.setPassword(request.getParameter("password"));
		
		vo = memberDao.memberLogin(vo);
//		request.setAttribute("member", vo); //request 객체에 싣는다.
		
		if(vo != null) {
			session.setAttribute("id", vo.getId()); //session에 값(id)을 담아놓는다. 
			session.setAttribute("author", vo.getAuthor());
			session.setAttribute("name", vo.getName());
			return "member/memberLoginSuccess";
		} else {
			return "member/memberLoginFail";
		}
		
	}

}
