package com.orm;

public class TpingItem
{
	private int id;
	private String order_id;
	private String orderitem_id;
	private String mingcheng;
	private String user_id;
	private String loginname;
	private String info;
	private int goods_id;
	private int goods_quantity;
	private String adddate;
	private String reply;
	private String replydate;
	
	
	private Tgoods goods;//表里没有。自己加的


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getOrder_id() {
		return order_id;
	}


	public void setOrder_id(String orderId) {
		order_id = orderId;
	}


	public String getOrderitem_id() {
		return orderitem_id;
	}


	public void setOrderitem_id(String orderitemId) {
		orderitem_id = orderitemId;
	}


	public String getMingcheng() {
		return mingcheng;
	}


	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String userId) {
		user_id = userId;
	}


	public String getLoginname() {
		return loginname;
	}


	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}


	public String getInfo() {
		return info;
	}


	public void setInfo(String info) {
		this.info = info;
	}


	public int getGoods_id() {
		return goods_id;
	}


	public void setGoods_id(int goodsId) {
		goods_id = goodsId;
	}


	public int getGoods_quantity() {
		return goods_quantity;
	}


	public void setGoods_quantity(int goodsQuantity) {
		goods_quantity = goodsQuantity;
	}


	public String getAdddate() {
		return adddate;
	}


	public void setAdddate(String adddate) {
		this.adddate = adddate;
	}


	public Tgoods getGoods() {
		return goods;
	}


	public void setGoods(Tgoods goods) {
		this.goods = goods;
	}


	public String getReply() {
		return reply;
	}


	public void setReply(String reply) {
		this.reply = reply;
	}


	public String getReplydate() {
		return replydate;
	}


	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	
	
	
	

}
