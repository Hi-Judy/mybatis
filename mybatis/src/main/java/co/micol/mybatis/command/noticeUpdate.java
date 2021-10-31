package co.micol.mybatis.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mybatis.comm.Command;
import co.micol.mybatis.notice.service.NoticeService;
import co.micol.mybatis.notice.service.NoticeVO;
import co.micol.mybatis.notice.serviceImpl.NoticeServiceImpl;

public class noticeUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 수정
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		System.out.println(vo);
		String nid = request.getParameter("nid");
		System.out.println(nid);
		int nidToInt = Integer.parseInt(nid);
		System.out.println("chk2"+nidToInt);
		vo.setnId(nidToInt);
		vo.setId(request.getParameter("id"));
		vo.setWriteDate(Date.valueOf(request.getParameter("writeDate")));
		vo.setHit(Integer.valueOf(request.getParameter("hit")));
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		System.out.println("chk33");
		int n = noticeDao.noticeUpdate(vo);
		System.out.println("chk44");
		System.out.println(vo);
		
		String viewPage = null;
		
		if (n != 0) { //정상적으로 업데이트 된다면
			viewPage = "notice/noticeUpdate"; //수정완료로 이동
		}else {
			request.setAttribute("message", "게시글 수정이 실패했어요.");
			viewPage = "notice/noticeFail";
		}
		return viewPage;
	}

}
