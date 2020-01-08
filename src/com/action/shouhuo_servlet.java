package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DB;
import com.orm.Tcatelog;
import com.orm.Tgoods;
import com.orm.Torder;
import com.orm.TorderItem;
import com.orm.TpingItem;
import com.orm.Tshouhuo;
import com.orm.Tuser;
import com.service.liuService;
import com.util.Cart;

public class shouhuo_servlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String type = req.getParameter("type");

		if (type.endsWith("myshouhuo")) {
			myshouhuo(req, res);
		}
		if (type.endsWith("addshouhuo")) {
			addshouhuo(req, res);
		}
		if (type.endsWith("delshouhuo")) {
			delshouhuo(req, res);
		}

	}

	public void myshouhuo(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Tuser user = (Tuser) session.getAttribute("user");

		List shouhuoList = new ArrayList();
		String sql = "select * from t_shouhuo where user_id='" + user.getId()
				+ "'";
		Object[] params = {};
		DB mydb = new DB();
		try {
			mydb.doPstm(sql, params);
			ResultSet rs = mydb.getRs();
			while (rs.next()) {
				Tshouhuo shouhuo = new Tshouhuo();
				shouhuo.setName(rs.getString("name"));
				shouhuo.setId(rs.getInt("id"));
				shouhuo.setTel(rs.getString("tel"));
				shouhuo.setYoubian(rs.getString("youbian"));
				shouhuo.setAdr(rs.getString("adr"));
				shouhuo.setUser_id(rs.getString("user_id"));
				shouhuoList.add(shouhuo);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mydb.closed();

		req.setAttribute("shouhuoList", shouhuoList);
		req.getSession().setAttribute("adrlist", shouhuoList);
		req.getRequestDispatcher("qiantai/shouhuo/shouhuoDetailQian.jsp").forward(
				req, res);

	}

	public void addshouhuo(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Tuser user = (Tuser) session.getAttribute("user");

		String name = req.getParameter("name").trim();
		String tel = req.getParameter("tel").trim();
		String youbian = req.getParameter("youbian").trim();
		String adr = req.getParameter("adr").trim();

		String sql = "insert into t_shouhuo(name,tel,youbian,adr,user_id) values(?,?,?,?,?)";
		Object[] params = { name, tel, youbian, adr, user.getId() };
		DB mydb = new DB();
		mydb.doPstm(sql, params);
		mydb.closed();

		myshouhuo(req, res);

	}

	public void delshouhuo(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Tuser user = (Tuser) session.getAttribute("user");

		 

		String sql="delete from t_shouhuo  where id="+Integer.parseInt(req.getParameter("id"));
		
		DB mydb=new DB();
		Object[] params={};
		mydb.doPstm(sql, params);
		mydb.closed();

		myshouhuo(req, res);

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

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	public void destroy() {

	}
}
