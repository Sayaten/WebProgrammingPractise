package jspexam.beans;

import java.util.Random;;

public class NumGameBean {
	private String name;
	private int count;
	private int answer;
	
	public NumGameBean()
	{
		name = null;
		count = 0;
		answer = 0;
	}
	
	public void createAnswer()
	{
		Random rand = new Random();
		answer = rand.nextInt(100) + 1;
		count = 0;
	}
	public int checkAnswer(int input)
	{
		if(answer == input)
		{
			return 0;
		}
		else if(answer > input)
		{
			return 1;
		}
		else
		{
			return -1;
		}
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
}
