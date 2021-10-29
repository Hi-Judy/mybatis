package co.micol.mybatis.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mybatis.comm.Command;
import co.micol.mybatis.notice.service.NoticeService;
import co.micol.mybatis.notice.service.NoticeVO;
import co.micol.mybatis.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 저장
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name")); //"--"안에는 jsp에 있는 name 속성에 해당하는 값을 쓴다.
		vo.setWriteDate(Date.valueOf(request.getParameter("writeDate")));
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		
		int n = noticeDao.noticeInsert(vo);
		String page = null;
		
		if (n != 0) { //정상적으로 등록된다면
			page = "noticeList.do"; //목록으로 이동
		}else {
			request.setAttribute("message", "게시글 등록이 실패했어요. 다시 입력해주세요.");
			page = "notice/noticeSaveFail";
		}
		
		return page;
	}

}
