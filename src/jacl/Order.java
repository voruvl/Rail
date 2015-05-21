package jacl;

public class Order {

	private Train train;
	private Station firstStation;
	private Station lastStation;

	public Train getTrain() {
		return train;
	}

	public void setTrain(Train train) {
		this.train = train;
	}

	public Station getFirstStation() {
		return firstStation;
	}

	public void setFirstStation(Station firstStation) {
		this.firstStation = firstStation;
	}

	public Station getLastStation() {
		return lastStation;
	}

	public void setLastStation(Station lastStation) {
		this.lastStation = lastStation;
	}
}
