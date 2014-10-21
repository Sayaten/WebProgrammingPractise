package practise03_package;

public class Element {
	private int count;
	private String name;

	public Element(String name, int count) {
		this.count = count;
		this.name = new String(name);
	}

	public Element(String name) {
		count = 0;
		this.name = new String(name);
	}
	public Element(Element o)
	{
		count = o.getCount();
		name = new String(o.getName());
	}
	public int getCount() {
		return count;
	}

	public String getName() {
		return name;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setName(String name) {
		this.name = new String(name);
	}
}
