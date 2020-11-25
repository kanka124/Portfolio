package com.blog.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogOut implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LogOut");
		
		HttpSession session = request.getSession();
		// 세션 해제
		session.invalidate();

		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/blog1/home.do");

		return forward;
	}
}
