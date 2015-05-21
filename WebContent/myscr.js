function insertTrain() {
	
	Trains trains = new Trains();
	Train train = new Train();
	train.setNumer(1);
	train.setFirstStation("Grodno");
	train.setLastStation("Minsk");
	trains.addTrain(train);
	alert("insert");
}
