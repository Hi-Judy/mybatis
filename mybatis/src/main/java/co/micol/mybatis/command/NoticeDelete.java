package co.micol.mybatis.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mybatis.comm.Command;
import co.micol.mybatis.notice.service.NoticeService;
import co.micol.mybatis.notice.service.NoticeVO;
import co.micol.mybatis.notice.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//게시글 삭제
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setnId(Integer.valueOf(request.getParameter("nid"))); //jsp 페이지의 form 태그의 name 이름과 똑같이 쓴다.
		int n = noticeDao.noticeDelete(vo);
		String viewPage = null;
		
		if (n != 0) {
			viewPage = "noticeList.do";
		}else {
			request.setAttribute("message", "게시글 삭제가 실패했어요.");
			viewPage = "notice/noticeFail";
		}
		
		return viewPage;
	}

}
