package co.micol.mybatis.notice.service;

import java.util.List;

public interface NoticeMapper {
	//게시글 목록 보기
	List<NoticeVO> noticeSelectList();
	
	//게시글 상세 조회
	NoticeVO noticeSelect(NoticeVO vo);
	
	//게시글 글쓰기
	int noticeInsert(NoticeVO vo);
	
	//게시글 상세조회 중 수정 기능 
	int noticeUpdate(NoticeVO vo);
	
	//게시글 상세조회 중 삭제 기능 
	int noticeDelete(NoticeVO vo);
	
	//게시글 상세조회 클릭했을 때 조회수 추가
	int noticeHitUpdate(NoticeVO vo);
}
