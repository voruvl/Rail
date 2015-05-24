package jacl;

import java.util.ArrayList;
import java.util.List;

public class Train {
	private int numer;
	private String firstStation;
	private String lastStation;
	private String time;
	private List<Station> stations=new ArrayList<Station>();

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getNumer() {
		return numer;
	}

	@Override
	public String toString() {
		return "Train [numer=" + numer + ", firstStation=" + firstStation
				+ ", lastStation=" + lastStation + ", time=" + time + "]";
	}

	public void setNumer(int numer) {
		this.numer = numer;
	}

	public String getFirstStation() {
		return firstStation;
	}

	public List<Station> getStations() {
		return stations;
	}
	public void setFirstStation(String firstStation) {
		this.firstStation = firstStation;
	}

	public String getLastStation() {
		return lastStation;
	}

	public void setLastStation(String lastStation) {
		this.lastStation = lastStation;
	}
	public void addStation(Station station){
		stations.add(station);
	}

}
