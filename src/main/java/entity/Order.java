package entity;

import java.util.Date;
import java.util.List;

public class Order {

    private long id;
    private User buyer;
    private User courier;
    private List<OrderBefore> goods;
    private Date create_time;
    private int paid;
    private int delivered;
    private String payment_type;
    private String delivery;
    private byte[] public_key;
    private byte[] sign_text;

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

    public String getPayment_type() {
        return payment_type;
    }

    public void setPayment_type(String payment_type) {
        this.payment_type = payment_type;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public byte[] getPublic_key() {
        return public_key;
    }

    public void setPublic_key(byte[] public_key) {
        this.public_key = public_key;
    }

    public byte[] getSign_text() {
        return sign_text;
    }

    public void setSign_text(byte[] sign_text) {
        this.sign_text = sign_text;
    }

    public User getCourier() {
        return courier;
    }

    public void setCourier(User courier) {
        this.courier = courier;
    }

    public int getDelivered() {
        return delivered;
    }

    public void setDelivered(int delivered) {
        this.delivered = delivered;
    }
}
