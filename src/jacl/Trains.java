package jacl;

import java.util.ArrayList;
import java.util.List;

public class Trains {

	private List<Train> trains;

	public Trains() {
		trains = new ArrayList<Train>();
	}

	public void addTrain(Train train) {
		trains.add(train);
	}
	
	public Train getTrain(int index){
		return trains.get(index);
	}
	public int count(){
		return trains.size();
	}
}
