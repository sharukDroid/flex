package com.example.ashadujjaman.medicin;

import android.content.Intent;
import android.net.Uri;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class DoctorAppointment extends AppCompatActivity {


    TextView name,speciality,degree,time;
    String doctorAppointmentName,doctorAppointmentSpeciality,doctorAppointmentDegree,doctorAppointmentTime;
    private FloatingActionButton doctorButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_doctor_appointment);


        name = findViewById(R.id.doctor_appointment_head);
        speciality = findViewById(R.id.doctor_appointment_desc);
        degree = findViewById(R.id.doctor_appointment_degree);
        time = findViewById(R.id.doctor_appointment_time);

        doctorButton = findViewById(R.id.appointmentFloatingActionButton);

        doctorAppointmentName = getIntent().getStringExtra("name");
        doctorAppointmentSpeciality = getIntent().getStringExtra("speciality");
        doctorAppointmentDegree = getIntent().getStringExtra("degree");
        doctorAppointmentTime = getIntent().getStringExtra("time");

        getSupportActionBar().setTitle(doctorAppointmentName);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);


        name.setText(doctorAppointmentName);
        speciality.setText(doctorAppointmentSpeciality);
        degree.setText(doctorAppointmentDegree);
        if(!doctorAppointmentTime.trim().equals("null")){
            time.setText("Visiting Hour: "+ doctorAppointmentTime);
        }else
            time.setText(getString(R.string.visiting_hour_unavailable));


        doctorButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent callIntent = new Intent(Intent.ACTION_DIAL);
                callIntent.setData(Uri.parse("tel:1234567890"));
//                startActivity(callIntent);
//                callIntent .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(callIntent);
            }
        });



    }
}
