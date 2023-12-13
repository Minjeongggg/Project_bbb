package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/bbb/*")
public class bbb_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public bbb_controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("do get 들어옴");
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("do Post 들어옴");
		// doGet(request, response);
		doHandle(request, response);
	}

	protected void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("======================");
		System.out.println("doHandle 들어옴");

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		HttpSession session = request.getSession();
		String nextPage = "";
		String path = request.getPathInfo();


		System.out.println("path : " + path);

		
		try {
			if (path.equals("/main.do")) {


			}else if(path.equals("/best_book.do")) {
				
				
			}else if(path.equals("/book_detail.do")) {
				
				
			}else if(path.equals("/book_detail.do")) {
				
				/*여기에 else if 추가해 가면서 처리하시면 돼요!!!!!*/
				
			}else if(path.equals("/book_detail.do")) {
				
				/*여기에 else if 추가해 가면서 처리하시면 돼요!!!!!*/
				
			}else {
				System.out.println("잘못들어옴");
			}

			System.out.println("nextPage: " + nextPage);
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
