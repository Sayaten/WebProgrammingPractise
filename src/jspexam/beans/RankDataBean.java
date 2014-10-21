package jspexam.beans;

import practise03_package.Element;
import java.util.ArrayList;

public class RankDataBean {
	private ArrayList<Element> list;

	public RankDataBean()
	{
		list = new ArrayList<Element>();
	}
	
	public ArrayList<Element> getList() {
		return new ArrayList<Element>(list);
	}

	public void setList(ArrayList<Element> list) {
		this.list = new ArrayList<Element>(list);
	}
}

