package firstweb.todo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

@WebServlet("/remove")
public class TodoRemoveController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("삭제하는 컨트롤러임");
		
		request.setAttribute("title", "Todo 와이어프레임 작성");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/todo/remove.jsp");
		
		dispatcher.forward(request, response);
		
	}


}
