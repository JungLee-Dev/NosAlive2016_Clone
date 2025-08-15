package controllers;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import models.MemberDAO;
import models.MemberDTO;
import models.*;

/**
 * Servlet implementation class MemberProcess
 */
@WebServlet("*.do")
public class MemberProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberProcess() {
		super();
	// TODO Auto-generated constructor stub
	    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
				
		String ticket = request.getParameter("ticket");
		System.out.println("request ticket = " + ticket);
		String[] URI = request.getRequestURI().split("/");
		String uriName = URI[URI.length - 1];
		int idx = uriName.lastIndexOf(".");
		String branch = uriName.substring(0, idx);
		Command command = null;
	
		System.out.println(branch);
		
		if(branch.equals("Regist")){
			// Member Regist
			command = new Command_MemberRegist();
			command.execute(request, response);			
		} else if (branch.equals("Unregist")){
			// Member Unregist
			command = new Command_MemberUnResist();
			command.execute(request, response);			
		} else if (branch.equals("Login")) {
			// Login
			command = new Command_Login();
			command.execute(request, response);			
		} else if(branch.equals("Logout")) {
			// Logout			
		} else if(branch.equals("GetMemberInfo")) {
			// Get Member Information
			command = new Command_GetMemberInfo();
			command.execute(request, response);			
		} else if(branch.equals("GetMemberList")) {
			// Get Member List
			command = new Command_GetMemberList();
			command.execute(request, response);			
		} else if(branch.equals("BuyTicket")) {
			// Buy Ticket
			command = new Command_BuyTicket();
			command.execute(request, response);			
		} else if(branch.equals("UpdateMemberInfo")) {
			// Update Member Info
			command = new Command_UpdateMemberInfo();
			command.execute(request, response);			
		}
	}
}
