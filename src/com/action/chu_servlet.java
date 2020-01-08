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
import com.orm.Tchu;

public class chu_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("chuAdd"))
		{
			chuAdd(req, res);
		}
		if(type.endsWith("chuMana"))
		{
			chuMana(req, res);
		}
		if(type.endsWith("chuDel"))
		{
			chuDel(req, res);
		}
		if(type.endsWith("chuDetail"))
		{
			chuDetail(req, res);
		}
		
		 
		if(type.endsWith("chuUpdate"))
		{
			chuUpdate(req, res);
		}
	}
	
	
	public void chuAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String goods_id=req.getParameter("goods_id");
		String ren=req.getParameter("ren");
		Integer count=Integer.parseInt(req.getParameter("count"));
		String date=req.getParameter("date");
		System.out.println(goods_id);
		String mingcheng=goods_id.split(":")[1];
		int goodsid=Integer.parseInt(goods_id.split(":")[0]);
		
		
		
		String sql="insert into t_chu(mingcheng,goodsid,ren,count,date) values(?,?,?,?,?)";
		Object[] params={mingcheng,goodsid,ren,count,date};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		String sql2="update t_goods set kucun=kucun-"+count+" where id="+goodsid;
		DB mydbs=new DB();
		mydbs.doPstm(sql2, null);
		mydbs.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "chu?type=chuMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	public void chuUpdate(HttpServletRequest req,HttpServletResponse res)
	{
		 
		 
		Integer id=Integer.parseInt(req.getParameter("id"));
		String goods_id=req.getParameter("goods_id");
		String ren=req.getParameter("ren");
		Integer count=Integer.parseInt(req.getParameter("count"));
		String date=req.getParameter("date");
		String mingcheng=goods_id.split(":")[1];
		int goodsid=Integer.parseInt(goods_id.split(":")[0]);
		 
		
		
		String sql="update t_chu set mingcheng=?,goodsid=?,ren=?,count=?,date=? where id=?";
		Object[] params={mingcheng,goodsid,ren,count,date,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "chu?type=chuMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	
	public void chuDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		
		String sql="delete from t_chu where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "chu?type=chuMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void chuMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List chuList=new ArrayList();
		String sql="select * from t_chu";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tchu chu=new Tchu();
				
				chu.setMingcheng(rs.getString("mingcheng"));
				chu.setGoodsid(rs.getInt("goodsid"));
				chu.setRen(rs.getString("ren"));
				chu.setDate(rs.getString("date"));
				chu.setCount(rs.getInt("count"));
				chu.setId(rs.getInt("id"));
				
				chuList.add(chu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("chuList", chuList);
		req.getRequestDispatcher("admin/chu/chuMana.jsp").forward(req, res);
	}
	
	
	
	
	public void chuDetail(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		Tchu chu=new Tchu();
		
		String sql="select * from t_chu where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			chu.setId(rs.getInt("id"));
			chu.setMingcheng(rs.getString("mingcheng"));
			chu.setGoodsid(rs.getInt("goodsid"));
			chu.setRen(rs.getString("ren"));
			chu.setDate(rs.getString("date"));
			chu.setCount(rs.getInt("count"));
			
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("chu", chu);
		req.getRequestDispatcher("admin/chu/chuDetail.jsp").forward(req, res);
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
