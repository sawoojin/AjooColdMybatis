package com.kh.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.kh.common.SqlSessionTemplate;
import com.kh.member.model.dao.MemberDAO;
import com.kh.member.model.vo.Member;

public class MemberService {
	
	private SqlSession conn;
	private MemberDAO mDao;
	
	public MemberService() {
		conn = SqlSessionTemplate.getSqlSession();
		mDao = new MemberDAO();
	}

	public int insertMember(Member member) {
		int result = mDao.insertMember(conn, member);
		if(result > 0) {
			conn.commit();
		}else {
			conn.rollback();
		}
		return result;
	}

	public Member selectCheckLogin(Member member) {
		Member mOne = mDao.selectCheckLogin(conn, member);
		return mOne;
	}

	public Member selectOneById(String memberId) {
		Member member = mDao.selectCheckLogin(conn, memberId);
		return member;
	}

	public int deleteMember(String memberId) {
		int result = mDao.deleteMember(conn, memberId);
		if(result > 0) {
			conn.commit();
		}else {
			conn.rollback();
		}
		return result;
	}

	public int updateMember(Member member) {
		int result = mDao.updateMember(conn, member);
		if(result > 0) {
			conn.commit();
		}else {
			conn.rollback();
		}
		return result;
	}

}
