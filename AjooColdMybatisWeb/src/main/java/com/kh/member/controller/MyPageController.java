package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MyPageController
 */
@WebServlet("/member/myPage.do")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			// 로그인한 사용자의 아이디를 세션에서 가져오는 방식으로 진행
			// getAttribute로 가져와야 하지만 object타입으로 반환하므로 String으로 강제형변환 시켜야 한다.
			String memberId = (String)session.getAttribute("memberId");
			MemberService mService = new MemberService();
			Member member = mService.selectOneById(memberId);
			if(member != null) {
				session.setAttribute("member", member);
				RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/member/myPage.jsp");
				view.forward(request, response);
			}else {
				request.setAttribute("msg", "NO DATE FOUND!");
				RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
				view.forward(request, response);
			}			
		} catch (Exception e) {
			request.setAttribute("msg", "오류 발생!");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
			view.forward(request, response);
		}
	}
}
