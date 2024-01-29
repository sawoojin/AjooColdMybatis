package com.kh.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

@WebServlet("/notice/list.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = -527802428095427837L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NoticeService nService = new NoticeService();
		List<Notice> nList = nService.selectAllNotice();
		if(!nList.isEmpty()) {
			req.setAttribute("nList", nList);
			req.getRequestDispatcher("/WEB-INF/views/notice/list.jsp").forward(req, resp);			
		}else {
			req.setAttribute("msg", "No Data Found");
			req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
		}
	}

}
