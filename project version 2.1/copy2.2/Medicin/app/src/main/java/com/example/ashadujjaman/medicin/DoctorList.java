package com.example.ashadujjaman.medicin;

public class DoctorList {

        private String name;
        private String degree;
        private String speciality;
        private String time;


    public DoctorList(String name, String degree, String speciality, String time) {
        this.name = name;
        this.degree = degree;
        this.speciality = speciality;
        this.time = time;
    }

    public DoctorList() {
    }

    public String getName() {
        return name;
    }

    public String getDegree() {
        return degree;
    }

    public String getSpeciality() {
        return speciality;
    }

    public String getTime() {
        return time;
    }
}
