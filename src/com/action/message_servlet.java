package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.TAdmin;
import com.orm.Tmessage;
import com.orm.Tuser;

public class message_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("messageAdd"))
		{
			messageAdd(req, res);
		}
		if(type.endsWith("messageMana"))
		{
			messageMana(req, res);
		}
		if(type.endsWith("messageDel"))
		{
			messageDel(req, res);
		}
		if(type.endsWith("messageDetail"))
		{
			messageDetail(req, res);
		}
		
		if(type.endsWith("messageDetailQian"))
		{
			messageDetailQian(req, res);
		}
		if(type.endsWith("messageManaQian"))
		{
			messageManaQian(req, res);
		}
		if(type.endsWith("messageReply"))
		{
			messageReply(req, res);
		}
	}
	
	
	public void messageAdd(HttpServletRequest req,HttpServletResponse res)
	{
		 
		String title=req.getParameter("title");
		String info=req.getParameter("info");
		String adate=new Date().toLocaleString();

		Tuser user=(Tuser)req.getSession().getAttribute("user");
		String auser=user.getLoginname();
		
		
		String sql="insert into t_message(title,info,adate,auser) values(?,?,?,?)";
		Object[] params={title,info,adate,auser};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "message?type=messageManaQian");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	public void messageReply(HttpServletRequest req,HttpServletResponse res)
	{
		 
		 
		String rinfo=req.getParameter("rinfo");
		String id=req.getParameter("id");
		String rdate=new Date().toLocaleString();
		
		
		String sql="update t_message set rinfo=?,rdate=? where id=?";
		Object[] params={rinfo,rdate,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "message?type=messageMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	
	public void messageDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		
		String sql="delete from t_message where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "message?type=messageMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void messageMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List messageList=new ArrayList();
		String sql="select * from t_message";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tmessage message=new Tmessage();
				
				message.setId(rs.getString("id"));
				message.setTitle(rs.getString("title"));
				message.setInfo(rs.getString("info"));
				message.setAdate(rs.getString("adate"));
				message.setAuser(rs.getString("auser"));
				message.setRdate(rs.getString("rdate"));
				message.setRinfo(rs.getString("rinfo"));
				
				messageList.add(message);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("messageList", messageList);
		req.getRequestDispatcher("admin/message/messageMana.jsp").forward(req, res);
	}
	
	
	public void messageManaQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List messageList=new ArrayList();
		String sql="select * from t_message";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tmessage message=new Tmessage();
				
				message.setId(rs.getString("id"));
				message.setTitle(rs.getString("title"));
				message.setInfo(rs.getString("info"));
				message.setAdate(rs.getString("adate"));
				message.setAuser(rs.getString("auser"));
				message.setRdate(rs.getString("rdate"));
				message.setRinfo(rs.getString("rinfo"));
				
				messageList.add(message);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("messageList", messageList);
		req.getRequestDispatcher("/qiantai/message/messageListQian.jsp").forward(req, res);
	}
	
	
	public void messageDetail(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		Tmessage message=new Tmessage();
		
		String sql="select * from t_message where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
		 
			message.setId(rs.getString("id"));
			message.setTitle(rs.getString("title"));
			message.setInfo(rs.getString("info"));
			message.setRdate(rs.getString("rdate"));
			message.setRinfo(rs.getString("rinfo"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("message", message);
		req.getRequestDispatcher("admin/message/messageDetail.jsp").forward(req, res);
	}
	
	public void messageDetailQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		Tmessage message=new Tmessage();
		
		String sql="select * from t_message where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
		 
			message.setId(rs.getString("id"));
			message.setTitle(rs.getString("title"));
			message.setInfo(rs.getString("info"));
			message.setRdate(rs.getString("rdate"));
			message.setRinfo(rs.getString("rinfo"));
			message.setAdate(rs.getString("adate"));
			message.setAuser(rs.getString("auser"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("message", message);
		req.getRequestDispatcher("/qiantai/message/messageDetailQian.jsp").forward(req, res);
	}
	
	
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
