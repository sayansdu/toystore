package entity;

public class OrderBefore {

    private Goods goods;
    private Order orders;
    private int amount;

    public OrderBefore(){
        amount = 0;
        goods = new Goods();
    }


    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Order getOrder() {
        return orders;
    }

    public void setOrder(Order orders) {
        this.orders = orders;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
