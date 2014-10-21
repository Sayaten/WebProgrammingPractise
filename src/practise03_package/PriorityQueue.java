package practise03_package;

import java.util.ArrayList;
import java.util.Iterator;

public class PriorityQueue {
	private ArrayList<Element> list;

	public PriorityQueue() {
		list = new ArrayList<Element>();
	}
	
	public PriorityQueue(ArrayList<Element> list) {
		this.list = new ArrayList<Element>(list);
	}

	public boolean isEmpty() {
		return list.isEmpty();
	}

	public void add(Element o) {
		int size = list.size();

		if (size == 0) {
			list.add(new Element(o));
		} else {
			int i;
			for (i = 0; i < size; ++i) {
				if (list.get(i).getCount() > o.getCount()) {
					list.add(i, new Element(o));
					break;
				}
			}
			if(i == list.size())
			{
				list.add(i, new Element(o));
			}
		}
	}

	public Element poll() {
		Element e = new Element(list.get(0));
		list.remove(0);
		return e;
	}

	public Element poll(int num) {
		Element e = new Element(list.get(num));
		list.remove(num);
		return e;
	}

	public Element peek() {
		return new Element(list.get(0));
	}

	public Element peek(int num) {
		if (list.size() > num) {
			return new Element(list.get(num));
		}
		return null;
	}

	public Element peek(Element o) {
		Iterator<Element> iter = list.iterator();
		Element e;
		while (iter.hasNext()) {
			e = iter.next();
			if (e.getName().compareTo(o.getName()) == 0) {
				return new Element(e);
			}
		}
		return null;
	}

	public int getSize() {
		return list.size();
	}
	
	public ArrayList<Element> getList()
	{
		return new ArrayList<Element>(list);
	}
	public void setList(ArrayList<Element> list)
	{
		this.list = new ArrayList<Element>(list);
	}
}
