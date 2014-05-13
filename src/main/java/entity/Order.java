package entity;

import java.util.Date;
import java.util.List;

public class Order {

    private long id;
    private User buyer;
    private List<OrderBefore> goods;
    private Date create_time;
    private int paid;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getBuyer() {
        return buyer;
    }

    public void setBuyer(User buyer) {
        this.buyer = buyer;
    }

    public List<OrderBefore> getGoods() {
        return goods;
    }

    public void setGoods(List<OrderBefore> goods) {
        this.goods = goods;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public int getPaid() {
        return paid;
    }

    public void setPaid(int paid) {
        this.paid = paid;
    }
}
