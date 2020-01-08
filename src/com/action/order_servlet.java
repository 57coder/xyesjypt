package com.action;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.orm.Tgonggao;
import com.orm.Torder;
import com.orm.Tuser;

public class order_servlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String type = req.getParameter("type");

		if (type.endsWith("orderMana")) {
			orderMana(req, res);
		}
		if (type.endsWith("orderDel")) {
			orderDel(req, res);
		}
		if (type.endsWith("orderShouli")) {
			orderShouli(req, res);
		}
		if (type.endsWith("orderZhang")) {
			orderZhang(req, res);
		}
		if (type.endsWith("orderShouhuo")) {
			orderShouhuo(req, res);
		}
		if (type.endsWith("orderPing")) {
			orderPing(req, res);
		}
		if (type.endsWith("orderReply")) {
			orderReply(req, res);
		}
		if (type.endsWith("orderSet")) {
			orderSet(req, res);
		}

	}

	public void orderShouhuo(HttpServletRequest req, HttpServletResponse res) {
		String id = req.getParameter("id");

		String sql = "update t_order set zhuangtai='shou' where id=?";
		Object[] params = { id };
		DB mydb = new DB();
		mydb.doPstm(sql, params);
		mydb.closed();

		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "buy?type=myorder");

		String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void orderPing(HttpServletRequest req, HttpServletResponse res) {

		String order_id = req.getParameter("order_id");
		String itemids = req.getParameter("itemid");

		Tuser user = (Tuser) req.getSession().getAttribute("user");
		System.out.println("order_id  " + order_id);
		System.out.println("user  " + user.getLoginname() + " " + user.getId());

		String[] getId = itemids.substring(1).split(":");
		for (String itemid : getId) {

			String pings = req.getParameter("txt" + itemid);
			if (pings.trim().length() > 0) {
//				System.out.println("itemid " + itemid);
//				System.out.println("pings:  " + pings);
				String goodsid = req.getParameter("goods" + itemid);
//				System.out.println("goodsid: " + goodsid);
				String goodsname = req.getParameter("goodsname" + itemid);
//				System.out.println("goodsname: " + goodsname);
				String date=new Date().toLocaleString();

				String sql = "insert into t_ping(order_id,orderitem_id,goods_id,mingcheng,user_id,loginname,info,adddate) values('"
						+ order_id + "','" + itemid + "',"+goodsid+",'"+goodsname+"'," +
								"'"+user.getId()+"','"+ user.getLoginname()+"','"+pings+"','"+date+"')";
				
				System.out.println(sql);
				DB mydb = new DB();
				mydb.doPstm(sql, null);
				mydb.closed();
				
			}

		}
		String usql="update t_order set zhuangtai='ping' where id='"+order_id+"'";
		System.out.println(usql);
		DB mydbs = new DB();
		mydbs.doPstm(usql, null);
		mydbs.closed();

		req.setAttribute("msg", "评价成功");
		String targetURL = "/common/ping_success.jsp";
		dispatch(targetURL, req, res);

	}
	
	
	public void orderReply(HttpServletRequest req, HttpServletResponse res) {

		String order_id = req.getParameter("order_id");
		String pingids = req.getParameter("pingid");
		
		System.out.println("pingids "+pingids);

 

		String[] getId = pingids.substring(1).split(":");
		for (String pingid : getId) {

			String replys = req.getParameter("txt" + pingid);
			if (replys.trim().length() > 0) {
//			 
				String date=new Date().toLocaleString();

				String sql = "update t_ping set reply='"+replys+"' , replydate='"+date+"' where id="+pingid;
				
				System.out.println(sql);
				DB mydb = new DB();
				mydb.doPstm(sql, null);
				mydb.closed();
				
			}

		}
		String usql="update t_order set zhuangtai='hui' where id='"+order_id+"'";
		System.out.println(usql);
		DB mydbs = new DB();
		mydbs.doPstm(usql, null);
		mydbs.closed();

		req.setAttribute("msg", "回复成功");
		String targetURL = "/common/reply_success.jsp";
		dispatch(targetURL, req, res);

	}

	public void orderDel(HttpServletRequest req, HttpServletResponse res) {
		String id = req.getParameter("id");

		String sql = "delete from t_order where id=?";
		Object[] params = { id };
		DB mydb = new DB();
		mydb.doPstm(sql, params);
		mydb.closed();

		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "order?type=orderMana");

		String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void orderMana(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		List orderList = new ArrayList();
		String sql = "select * from t_order order by zhuangtai desc";
		Object[] params = {};
		DB mydb = new DB();
		try {
			mydb.doPstm(sql, params);
			ResultSet rs = mydb.getRs();
			while (rs.next()) {
				Torder order = new Torder();

				order.setId(rs.getString("id"));
				order.setBianhao(rs.getString("bianhao"));
				order.setShijian(rs.getString("shijian"));
				order.setZhuangtai(rs.getString("zhuangtai"));
				order.setSonghuodizhi(rs.getString("songhuodizhi"));
				order.setFukuanfangshi(rs.getString("fukuanfangshi"));
				order.setJine(rs.getInt("jine"));
				order.setUser_id(rs.getString("user_id"));

				orderList.add(order);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mydb.closed();

		req.setAttribute("orderList", orderList);
		req.getRequestDispatcher("admin/order/orderMana.jsp").forward(req, res);
	}

	public void orderZhang(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		List orderList = new ArrayList();
		String sql = "select * from t_order where zhuangtai='yes' order by zhuangtai desc ";
		Object[] params = {};
		DB mydb = new DB();
		try {
			mydb.doPstm(sql, params);
			ResultSet rs = mydb.getRs();
			while (rs.next()) {
				Torder order = new Torder();

				order.setId(rs.getString("id"));
				order.setBianhao(rs.getString("bianhao"));
				order.setShijian(rs.getString("shijian"));
				order.setZhuangtai(rs.getString("zhuangtai"));
				order.setSonghuodizhi(rs.getString("songhuodizhi"));
				order.setFukuanfangshi(rs.getString("fukuanfangshi"));
				order.setJine(rs.getInt("jine"));
				order.setUser_id(rs.getString("user_id"));

				orderList.add(order);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mydb.closed();

		req.setAttribute("orderList", orderList);
		req.getRequestDispatcher("admin/order/orderZhang.jsp")
				.forward(req, res);
	}

	public void orderShouli(HttpServletRequest req, HttpServletResponse res) {
		String id = req.getParameter("id");

		String sql = "update t_order set zhuangtai='yes' where id=?";
		Object[] params = { id };
		DB mydb = new DB();
		mydb.doPstm(sql, params);
		mydb.closed();

		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "order?type=orderMana");

		String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void dispatch(String targetURI, HttpServletRequest request,
			HttpServletResponse response) {
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(
				targetURI);
		try {
			dispatch.forward(request, response);
			return;
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	
	public void orderSet(HttpServletRequest req, HttpServletResponse res) {
		String itemid = req.getParameter("itemid");

		String sql = "update  t_orderitem set  goods_state='退货' where id=?";
		Object[] params = { itemid };
		DB mydb = new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		try {
			res.setContentType("text/html");
			PrintWriter out = res.getWriter();
			
			out.println("<script>alert('已提交申请');window.close()</script>");
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	public void destroy() {

	}
}
