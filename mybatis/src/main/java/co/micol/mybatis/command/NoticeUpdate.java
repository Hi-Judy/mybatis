package co.micol.mybatis.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mybatis.comm.Command;
import co.micol.mybatis.notice.service.NoticeService;
import co.micol.mybatis.notice.service.NoticeVO;
import co.micol.mybatis.notice.serviceImpl.NoticeServiceImpl;

public class NoticeUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 수정
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		System.out.println(vo);
		
		vo.setnId(Integer.valueOf(request.getParameter("nid")));
		System.out.println(vo.getnId());
		
		
		
		vo.setTitle(request.getParameter("title"));
		System.out.println(vo.getTitle());
		
		vo.setContents(request.getParameter("contents"));
		System.out.println(vo.getContents());
		
		System.out.println("ddd");
		vo.setWriteDate(Date.valueOf(request.getParameter("writeDate")));
		System.out.println("ddd");
		
		int n = noticeDao.noticeUpdate(vo);
		System.out.println(vo);
		
		String viewPage = null;
		
		if (n != 0) { //정상적으로 업데이트 된다면
			viewPage = "notice/noticeList"; //목록으로 이동
		}else {
			request.setAttribute("message", "게시글 수정이 실패했어요.");
			viewPage = "notice/noticeFail";
		}
		return viewPage;
	}

}
