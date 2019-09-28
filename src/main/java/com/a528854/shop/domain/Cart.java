package com.a528854.shop.domain;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * 购物车
 * @author Administrator
 *
 */
public class Cart {
	private Double total=0.0;
	private Map<String,CartItem> map=new HashMap<>();


	/**
	 * 通过该方法在jsp页面中调用cart.items
	 * @return
	 */
	public Collection<CartItem> getItems(){
		return map.values();
	}


	public Map<String, CartItem> getMap() {
		return map;
	}

	public void setMap(Map<String, CartItem> map) {
		this.map = map;
	}

	public Double getTotal() {
		return total;
	}



	public void add(CartItem item){
		String pid=item.getProduct().getPid();
		if (map.containsKey(pid)){
			CartItem existItem = map.get(pid);
			existItem.setCount(existItem.getCount()+item.getCount());
			this.total+=existItem.getSubtotal();
		}else {
			map.put(pid,item);
			this.total+=item.getSubtotal();
		}
	}

	public void remove(String pid){
		CartItem item = map.get(pid);
		this.total-=item.getSubtotal();
		map.remove(pid);
	}
	public void clear(){
		map.clear();
	}

}
