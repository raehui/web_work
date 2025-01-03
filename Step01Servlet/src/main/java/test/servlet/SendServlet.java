package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/*
 * 클라이언트는 msg 라는 파라미터명으로 문자열을 전송한 상황이다.
 * 이 서블릿에서는 그 파라미터를 추출해서 콘솔에 출력하는 테스트를 해보고자 한다. 
 * 요청 파라미터 추출은 HttpServletRequest 객체를 이용해서 추출하면 된다.
 */
@WebServlet("/send")
public class SendServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//요청과 관련된 객체 : req
		//응답에 관련된 객채 : resp
		//요청은 모두 같음
		String msg=req.getParameter("msg");
		System.out.println("폼 전송된 내용: "+msg);
		
		//간단 응답
		PrintWriter pw=resp.getWriter();
		pw.println("/send okay~~");
		pw.close();
	}
}
