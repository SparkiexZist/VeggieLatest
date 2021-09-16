package io.aadeesh.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Vegetable
{
    private String name;
    private double price;
    private double weight;
    private int amount;
    private String id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Id
    public String getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Vegetable{" +
                "name='" + name + '\'' +
                ", price=" + price +
                ", weight=" + weight +
                ", amount=" + amount +
                ", id='" + id + '\'' +
                '}';
    }
}
