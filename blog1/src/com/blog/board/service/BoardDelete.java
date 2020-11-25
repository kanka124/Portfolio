package com.blog.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.blog.board.db.BoardDAO;
import com.blog.member.service.Action;
import com.blog.member.service.ActionForward;

public class BoardDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// ������ �Ѿ�� ���� ����
		int no = Integer.parseInt(request.getParameter("no"));
		String section = request.getParameter("section");
		String num = request.getParameter("num");
		
		// �ش� �Խñ� ����
		BoardDAO manager = BoardDAO.getInstance();
		manager.boardDelete(no);
		
		// ������ �̵�
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/blog1/BoardList.do?section="+section+"&num="+num);
		
		return forward;
	}
}
