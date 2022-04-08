package model;

public class User {
	protected int id;
	protected String FLYING_FROM;
	protected String FLYING_TO;
	protected String DEPARTURE;
	protected String TIME;
	protected int TICKET_PRICE;
	
	public User() {
	}

	public User(String fLYING_FROM, String fLYING_TO, String dEPARTURE, String tIME, int tICKET_PRICE) {
		super();
		this.FLYING_FROM = fLYING_FROM;
		this.FLYING_TO = fLYING_TO;
		this.DEPARTURE = dEPARTURE;
		this.TIME = tIME;
		this.TICKET_PRICE = tICKET_PRICE;
	}

	public User(int id, String fLYING_FROM, String fLYING_TO, String dEPARTURE, String tIME,
			int tICKET_PRICE) {
		super();
		this.id = id;
		this.FLYING_FROM = fLYING_FROM;
		this.FLYING_TO = fLYING_TO;
		this.DEPARTURE = dEPARTURE;
		this.TIME = tIME;
		this.TICKET_PRICE = tICKET_PRICE;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFLYING_FROM() {
		return FLYING_FROM;
	}

	public void setFLYING_FROM(String fLYING_FROM) {
		FLYING_FROM = fLYING_FROM;
	}

	public String getFLYING_TO() {
		return FLYING_TO;
	}

	public void setFLYING_TO(String fLYING_TO) {
		FLYING_TO = fLYING_TO;
	}

	public String getDEPARTURE() {
		return DEPARTURE;
	}

	public void setDEPARTURE(String dEPARTURE) {
		DEPARTURE = dEPARTURE;
	}

	public String getTIME() {
		return TIME;
	}

	public void setTIME(String tIME) {
		TIME = tIME;
	}

	public int getTICKET_PRICE() {
		return TICKET_PRICE;
	}

	public void setTICKET_PRICE(int tICKET_PRICE) {
		TICKET_PRICE = tICKET_PRICE;
	}
	
	

	
}
