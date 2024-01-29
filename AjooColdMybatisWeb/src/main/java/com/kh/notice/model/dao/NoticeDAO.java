package com.kh.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.notice.model.vo.Notice;

public class NoticeDAO {

	// 공지사항 삽입
	public int insertNotice(SqlSession conn, Notice notice) {
		int result = conn.insert("NoticeMapper.insertNotice", notice);
		return result;
	}

	// 공지사항 전체 출력 
	public List<Notice> selectAllNotice(SqlSession conn) {
		List<Notice> nList = conn.selectList("NoticeMapper.selectAllNotice");
		return nList;
	}

	public Notice selectOneByNo(SqlSession conn, int noticeNo) {
		Notice notice = conn.selectOne("NoticeMapper.selectOneByNo", noticeNo);
		return notice;
	}

	public int deleteNotice(SqlSession conn, int noticeNo) {
		int result = conn.delete("NoticeMapper.deleteNotice", noticeNo);
		return result;
	}

	public int updateNotice(SqlSession conn, Notice notice) {
		int result = conn.update("NoticeMapper.updateNotice", notice);
		return result;
	}
}
