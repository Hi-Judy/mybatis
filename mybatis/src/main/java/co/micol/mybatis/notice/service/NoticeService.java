package co.micol.mybatis.notice.service;

import java.util.List;

public interface NoticeService {
	//CRUD
	List<NoticeVO> noticeSelectList();
	NoticeVO noticeSelect();
	int noticeInsert(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
}