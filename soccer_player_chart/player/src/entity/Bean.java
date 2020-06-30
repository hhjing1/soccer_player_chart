package entity;

public class Bean {
	private int id;
	private String name;
	private int win;
	private int lose;
	public Bean() {}
	public Bean(int id, String name, int win, int lose) {
		super();
		this.id = id;
		this.name = name;
		this.win = win;
		this.lose = lose;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getLose() {
		return lose;
	}
	public void setLose(int lose) {
		this.lose = lose;
	}
	
}
