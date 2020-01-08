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
import com.orm.Tjin;

public class jin_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("jinAdd"))
		{
			jinAdd(req, res);
		}
		if(type.endsWith("jinMana"))
		{
			jinMana(req, res);
		}
		if(type.endsWith("jinDel"))
		{
			jinDel(req, res);
		}
		if(type.endsWith("jinDetail"))
		{
			jinDetail(req, res);
		}
		
		 
		if(type.endsWith("jinUpdate"))
		{
			jinUpdate(req, res);
		}
	}
	
	
	public void jinAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String goods_id=req.getParameter("goods_id");
		String ren=req.getParameter("ren");
		Integer count=Integer.parseInt(req.getParameter("count"));
		String date=req.getParameter("date");
		System.out.println(goods_id);
		String mingcheng=goods_id.split(":")[1];
		int goodsid=Integer.parseInt(goods_id.split(":")[0]);
		
		
		
		String sql="insert into t_jin(mingcheng,goodsid,ren,count,date) values(?,?,?,?,?)";
		Object[] params={mingcheng,goodsid,ren,count,date};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		String sql2="update t_goods set kucun=kucun+"+count+" where id="+goodsid;
		DB mydbs=new DB();
		mydbs.doPstm(sql2, null);
		mydbs.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "jin?type=jinMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	public void jinUpdate(HttpServletRequest req,HttpServletResponse res)
	{
		 
		 
		Integer id=Integer.parseInt(req.getParameter("id"));
		String goods_id=req.getParameter("goods_id");
		String ren=req.getParameter("ren");
		Integer count=Integer.parseInt(req.getParameter("count"));
		String date=req.getParameter("date");
		String mingcheng=goods_id.split(":")[1];
		int goodsid=Integer.parseInt(goods_id.split(":")[0]);
		 
		
		
		String sql="update t_jin set mingcheng=?,goodsid=?,ren=?,count=?,date=? where id=?";
		Object[] params={mingcheng,goodsid,ren,count,date,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "jin?type=jinMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	
	public void jinDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		
		String sql="delete from t_jin where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "jin?type=jinMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void jinMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List jinList=new ArrayList();
		String sql="select * from t_jin";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tjin jin=new Tjin();
				
				jin.setMingcheng(rs.getString("mingcheng"));
				jin.setGoodsid(rs.getInt("goodsid"));
				jin.setRen(rs.getString("ren"));
				jin.setDate(rs.getString("date"));
				jin.setCount(rs.getInt("count"));
				jin.setId(rs.getInt("id"));
				
				jinList.add(jin);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("jinList", jinList);
		req.getRequestDispatcher("admin/jin/jinMana.jsp").forward(req, res);
	}
	
	
	
	
	public void jinDetail(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		Tjin jin=new Tjin();
		
		String sql="select * from t_jin where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			jin.setId(rs.getInt("id"));
			jin.setMingcheng(rs.getString("mingcheng"));
			jin.setGoodsid(rs.getInt("goodsid"));
			jin.setRen(rs.getString("ren"));
			jin.setDate(rs.getString("date"));
			jin.setCount(rs.getInt("count"));
			
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("jin", jin);
		req.getRequestDispatcher("admin/jin/jinDetail.jsp").forward(req, res);
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
