package com.example.ashadujjaman.medicin;

import android.content.Intent;
import android.support.v4.app.NavUtils;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.toolbox.StringRequest;

public class HospitalActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hospital);

        TextView head = findViewById(R.id.hospital_head);
        TextView desc = findViewById(R.id.hospital_desc);
        ImageView imageView = findViewById(R.id.hospital_activity_image_view);
        Button doctorButton = findViewById(R.id.doctor_button);


        String hospitalHead = getIntent().getStringExtra("head");
        String hospitalDesc = getIntent().getStringExtra("desc");

 //       if (hospitalHead !=null) {

            switch (hospitalHead) {
                case "SQUARE hospitals Ltd.":
                    imageView.setImageResource(R.drawable.hospital);
                    break;
                case "Ibn SIna Hospital":
                    imageView.setImageResource(R.drawable.hospital1);
                    break;
                case "Enam Medical College & Hospital":
                    imageView.setImageResource(R.drawable.hospital2);
                    break;
                case "Ibrahim Cardiac Hospital & Research Institute":
                    imageView.setImageResource(R.drawable.hospital3);
                    break;
                case "Bangladesh Eye Hospital":
                    imageView.setImageResource(R.drawable.hospital4);
                    break;
                case "Central Hospital":
                    imageView.setImageResource(R.drawable.hospital5);
                    break;
                case "Samorita Hospital":
                    imageView.setImageResource(R.drawable.hospital);
                    break;
                case "Harun Eye Foundation Hospital":
                    imageView.setImageResource(R.drawable.hospital1);
                    break;
                case "Anwer Khan Modern Hospital Limited":
                    imageView.setImageResource(R.drawable.hospital2);
                    break;
                case "Ahsania Mission General Cancer Hospital":
                    imageView.setImageResource(R.drawable.hospital3);
                    break;
                default:
                    break;
            }
 //       }

        getSupportActionBar().setTitle(hospitalHead);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);




        head.setText(hospitalHead);
        desc.setText(hospitalDesc);


        doctorButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent doctor= new Intent(HospitalActivity.this,DoctorInfoActivity.class);
                doctor.putExtra("hospitalName",getIntent().getStringExtra("head"));
                startActivity(doctor);
            }
        });

    }
}
