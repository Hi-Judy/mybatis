package co.micol.mybatis.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mybatis.comm.DataSource;
import co.micol.mybatis.member.service.MemberMapper;
import co.micol.mybatis.member.service.MemberService;
import co.micol.mybatis.member.service.MemberVO;

public class MemberServiceImpl implements MemberService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); //연결
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class); //Mapper 활용

	public List<MemberVO> memberSelectList() {
//		return sqlSession.selectList("memberSelectList"); //Mapper 없이 사용할 때
		return map.memberSelectList(); //Mapper 활용해서 사용할 때
	}

	public MemberVO memberSelect(MemberVO vo) {
//		return sqlSession.selectOne("memberSelect", vo);
		return map.memberSelect(vo);
	}

	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		return map.memberLogin(vo);
	}
	
}
