package com.kh.notice.model.vo;

import java.sql.Timestamp;

public class Notice {
	private int noticeNo;
	private String noticeSub;
	private String noticeCon;
	private String noticeWrit;
	private Timestamp noticeDate;
	private Timestamp updateDate;
	private int viewCount;
	
	public Notice() {}

	
	public Notice(String noticeSub, String noticeCon) {
		super();
		this.noticeSub = noticeSub;
		this.noticeCon = noticeCon;
	}

	
	
	public Notice(int noticeNo, String noticeSub, String noticeCon) {
		super();
		this.noticeNo = noticeNo;
		this.noticeSub = noticeSub;
		this.noticeCon = noticeCon;
	}


	// g,s,tos
	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeSub() {
		return noticeSub;
	}

	public void setNoticeSub(String noticeSub) {
		this.noticeSub = noticeSub;
	}

	public String getNoticeCon() {
		return noticeCon;
	}

	public void setNoticeCon(String noticeCon) {
		this.noticeCon = noticeCon;
	}

	public String getNoticeWrit() {
		return noticeWrit;
	}

	public void setNoticeWrit(String noticeWrit) {
		this.noticeWrit = noticeWrit;
	}

	public Timestamp getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Timestamp noticeDate) {
		this.noticeDate = noticeDate;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeSub=" + noticeSub + ", noticeCon=" + noticeCon
				+ ", noticeWrit=" + noticeWrit + ", noticeDate=" + noticeDate + ", updateDate=" + updateDate
				+ ", viewCount=" + viewCount + "]";
	}
	
	
}
