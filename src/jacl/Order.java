package jacl;

public class Order {

	private Train train;
	private int firstStation;
	private int lastStation;

	public Train getTrain() {
		return train;
	}

	public void setTrain(Train train) {
		this.train = train;
	}

	public int getFirstStation() {
		return firstStation;
	}

	public void setFirstStation(int firstStation) {
		this.firstStation = firstStation;
	}

	public int getLastStation() {
		return lastStation;
	}

	public void setLastStation(int lastStation) {
		this.lastStation = lastStation;
	}
}
