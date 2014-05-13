package service;

import dal.OrderRepository;
import entity.Order;
import entity.OrderBefore;

public class OrderService {

    GoodService goodService;
    CategoryService categoryService;
    OrderRepository orderRepository;

    public OrderService(){
        goodService = new GoodService();
        categoryService = new CategoryService();
        orderRepository = new OrderRepository();
    }

    public void saveOrder(Order order){
        orderRepository.saveOrder(order);
    }

    public void saveOrderBefore(OrderBefore goodBefore){
        orderRepository.saveOrderBefore(goodBefore);
    }

    public Order getLastOrder(){
        return orderRepository.getLastOrder();
    }

    public Order getOrder(long id){
        return orderRepository.getOrderById(id);
    }

}
