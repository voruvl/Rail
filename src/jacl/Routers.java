package jacl;

import java.util.ArrayList;
import java.util.List;

public class Routers {
	private List<Train> trains = new ArrayList<Train>();

	public void addRoute(Train route) {
		trains.add(route);
	}

	public Train getTrain(Train train) {
		Train getTrain = null;
		for (int i = 0; i < trains.size(); i++) {
			Train findTrain = trains.get(i);
			if (findTrain.equals(train))
				getTrain = trains.get(i);
		}
		return getTrain;
	}

	public Train getTrain(int index) {
		return trains.get(index);
	}

	public int count() {

		return trains.size();

	}

	public int getIndex(Train train) {
		return trains.indexOf(train);
	}

}
