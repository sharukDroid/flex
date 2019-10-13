package com.example.ashadujjaman.medicin;

public class MedicineList {

    private String name;
    private String catagory;
    private String dosage;
    private String strength;
    private String company;
    private String packSize;
    private String Price;

    public MedicineList(String name, String catagory, String dosage, String strength, String company, String packSize, String price) {
        this.name = name;
        this.catagory = catagory;
        this.dosage = dosage;
        this.strength = strength;
        this.company = company;
        this.packSize = packSize;
        Price = price;
    }

    public String getName() {
        return name;
    }

    public String getCatagory() {
        return catagory;
    }

    public String getDosage() {
        return dosage;
    }

    public String getStrength() {
        return strength;
    }

    public String getCompany() {
        return company;
    }

    public String getPackSize() {
        return packSize;
    }

    public String getPrice() {
        return Price;
    }
}
