package edu.kosa.quiz;

public class GiftVO {
	
	private int gno;
	private String gname;
	private String g_start;
	private String g_end;
	
	public GiftVO() {
		this.gno = 1;
		this.gname= "과자세트";
		this.g_start="230614";
		this.g_end="230621";
	}
	
	//getter setter
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getG_start() {
		return g_start;
	}
	public void setG_start(String g_start) {
		this.g_start = g_start;
	}
	public String getG_end() {
		return g_end;
	}
	public void setG_end(String g_end) {
		this.g_end = g_end;
	}

	@Override
	public String toString() {
		return "GiftVO [gno=" + gno + ", gname=" + gname + ", g_start=" + g_start + ", g_end=" + g_end + "]";
	}

	
	
}
