package jacl;

import java.util.ArrayList;
import java.util.List;

public class Orders {
	private List<Order> orders = new ArrayList<Order>();

	public void addOrder(Order order) {
		orders.add(order);

	}

	public Order getOrder(int index) {
		return orders.get(index);
	}

	public int count() {
		return orders.size();
	}
}
