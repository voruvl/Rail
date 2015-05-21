package jacl;

public class Util {
	Trains trains;

	public Util() {
		trains = new Trains();
	}

	public void insertTrains(Train train) {
		
		trains.addTrain(train);
	}
}
