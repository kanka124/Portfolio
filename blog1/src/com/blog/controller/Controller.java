package com.blog.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.member.service.Action;
import com.blog.member.service.ActionForward;
import com.blog.member.service.LogOut;
import com.blog.member.service.MemberJoin;
import com.blog.member.service.MemberUpdateForm;
import com.blog.member.service.NewLoginAction;
import com.blog.reply.service.ReplyWriteAction;
import com.blog.board.service.BoardDelete;
import com.blog.board.service.BoardUpdate;
import com.blog.board.service.BoardUpdateForm;
import com.blog.reply.service.GetReply;
import com.blog.board.service.RecCount;
import com.blog.board.service.RecUpdate;
import com.blog.board.service.BoardContent;
import com.blog.board.service.BoardWrite;
import com.blog.board.service.BoardList;
import com.blog.member.service.LoginAction;
import com.blog.member.service.MemberUpdate;
/**
 * Servlet implementation class Controller
 */
@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		System.out.println("requestURI : " + requestURI);
		System.out.println("contextPath : " + contextPath);
		System.out.println("command : " + command);

		Action action = null;
		ActionForward forward = null;

		// 회원가입 폼
		if (command.equals("/MemberJoinForm.do")) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./member/register.jsp");
		}
		// 회원가입
		else if (command.equals("/MemberJoin.do")) {
			try {
				action = new MemberJoin();
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// index 페이지로 이동
		else if (command.equals("/home.do")) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./home/home.jsp");
		}
		
		else if (command.equals("/LoginForm.do")) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./member/login.jsp");
		}
		
		// 로그인
		else if (command.equals("/LoginAction.do")) {
			try {
				action = new LoginAction();
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 새창 로그인폼
				else if (command.equals("/NewLoginForm.do")) {
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath("./member/newLoginForm.jsp");
				}
				// 새창 로그인
				else if (command.equals("/NewLoginAction.do")) {
					try {
						action = new NewLoginAction();
						action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
	

		else if (command.equals("/LogOut.do")) {
			try {
				action = new LogOut();
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/MemberUpdateForm.do")){
			try {
				action = new MemberUpdateForm();
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/MemberUpdate.do")){
			try {
				action = new MemberUpdate();
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// 게시판 목록
				else if (command.equals("/BoardList.do")) {
					try {
						action = new BoardList();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		
				else if (command.equals("/BoardWriteForm.do")) {
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath("./board/boardWriteForm.jsp?section="+request.getParameter("section"));
				}
		
		// 게시판 글작성 form
				else if (command.equals("/BoardWriteForm.do")) {
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath("./board/boardWriteForm.jsp?section="+request.getParameter("section"));
				}
				// 게시판 글작성
				else if (command.equals("/BoardWrite.do")) {
					try {
						action = new BoardWrite();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
		// 게시판 상세 페이지
				else if (command.equals("/BoardContent.do")) {
					try {
						action = new BoardContent();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
		// 추천수 업데이트
				else if (command.equals("/RecUpdate.do")) {
					try {
						action = new RecUpdate();
						action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				// 추천수 검색
				else if (command.equals("/RecCount.do")) {
					try {
						action = new RecCount();
						action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		
				else if (command.equals("/ReplyWriteAction.do")) {
					try {
						action = new ReplyWriteAction();
						action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		
		// 댓글 목록
				else if (command.equals("/GetReply.do")) {
					try {
						action = new GetReply();
						action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		
		// 게시판 수정 폼
				else if (command.equals("/BoardUpdateForm.do")) {
					try {
						action = new BoardUpdateForm();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
		// 게시판 수정
				else if (command.equals("/BoardUpdate.do")) {
					try {
						action = new BoardUpdate();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
		// 게시글 삭제
				else if (command.equals("/BoardDelete.do")) {
					try {
						action = new BoardDelete();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
		
		// 페이지 이동
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get");
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		System.out.println("post");
		doProcess(request, response);
	}
}

