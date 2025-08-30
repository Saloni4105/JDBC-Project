package entity;

public class Theater {
    private int theater_Id;
    private String name;
    private String city;

    public Theater(int theater_Id, String name, String city) {
        this.theater_Id = theater_Id;
        this.name = name;
        this.city = city;
    }

    public int getTheater_Id() {
        return theater_Id;
    }

    public void setTheater_Id(int theater_Id) {
        this.theater_Id = theater_Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
