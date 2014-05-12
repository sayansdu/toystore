package entity;

import java.util.Date;
import java.util.List;

public class Order {

    private long id;
    private User buyer;
    private List<Order_good> goods;
    private Date create_time;
    private Boolean paid;

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

    public List<Order_good> getGoods() {
        return goods;
    }

    public void setGoods(List<Order_good> goods) {
        this.goods = goods;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Boolean getPaid() {
        return paid;
    }

    public void setPaid(Boolean paid) {
        this.paid = paid;
    }
}
