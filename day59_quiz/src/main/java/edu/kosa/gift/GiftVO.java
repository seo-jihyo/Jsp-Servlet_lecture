package edu.kosa.gift;

public class GiftVO {
	private int GNO;
	private String gname;
	private int G_START;
	private int G_END;
	
	public GiftVO() {
		// TODO Auto-generated constructor stub
	}

	public int getGNO() {
		return GNO;
	}

	public void setGNO(int gNO) {
		GNO = gNO;
	}

	
	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public int getG_START() {
		return G_START;
	}

	public void setG_START(int g_START) {
		G_START = g_START;
	}

	public int getG_END() {
		return G_END;
	}

	public void setG_END(int g_END) {
		G_END = g_END;
	}

	@Override
	public String toString() {
		return "GiftVO [GNO=" + GNO + ", GNAME=" + gname + ", G_START=" + G_START + ", G_END=" + G_END + "]";
	}
	
}
