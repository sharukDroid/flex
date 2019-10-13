package com.example.ashadujjaman.medicin;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Toast;

public class AdminActivity extends AppCompatActivity {

    ImageButton ib1,ib2,ib3;
    String[] admin1= {"sharuk15-5796@diu.edu.bd"};
    String[] admin2= {"parash15-5742@diu.edu.bd"};
    String[] admin3= {"mynulislam422@gmail.com"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_admin);

        getSupportActionBar().setTitle("Admin Panel");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        ib1=findViewById(R.id.admin1_email);
        ib2=findViewById(R.id.admin2_email);
        ib3=findViewById(R.id.admin3_email);

        ib1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                sendEmail(admin1);
            }
        });
        ib2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                sendEmail(admin2);
            }
        });
        ib3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                sendEmail(admin3);
            }
        });
    }

    protected void sendEmail(String[] to) {
        Log.i("Send email", "");
        Intent emailIntent = new Intent(Intent.ACTION_SEND);

        emailIntent.setData(Uri.parse("mailto:"));
        emailIntent.setType("text/plain");
        emailIntent.putExtra(Intent.EXTRA_EMAIL, to);

        try {
            startActivity(Intent.createChooser(emailIntent, "Send mail..."));
            finish();
            Log.i("Finished sending email", "");
        } catch (android.content.ActivityNotFoundException ex) {
            Toast.makeText(AdminActivity.this, "There is no email client installed.", Toast.LENGTH_SHORT).show();
        }
    }
}
