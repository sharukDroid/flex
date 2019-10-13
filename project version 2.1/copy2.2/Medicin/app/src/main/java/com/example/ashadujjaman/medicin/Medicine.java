package com.example.ashadujjaman.medicin;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

public class Medicine extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_medicine);

        TextView name = findViewById(R.id.medicine_activity_name);
        TextView category = findViewById(R.id.medicine_activity_category);
        TextView dosage = findViewById(R.id.medicine_activity_dosage);
        TextView strength = findViewById(R.id.medicine_activity_strength);
        TextView packSize = findViewById(R.id.medicine_activity_pack_size);
        TextView company = findViewById(R.id.medicine_activity_company);
        TextView price = findViewById(R.id.medicine_activity_price);
        ImageView medicineImage = findViewById(R.id.medicine_image);


        String medicineName = getIntent().getStringExtra("name");
        String medicineCategory = "Category: " + getIntent().getStringExtra("category");
        String medicineDosage = "Dosage: " + getIntent().getStringExtra("dosage");
        String medicineStrength = "Strength: " + getIntent().getStringExtra("strength");
        String medicinePackSize = "Pack Size: " + getIntent().getStringExtra("packSize");
        String medicineCompany = "Company: " + getIntent().getStringExtra("company");
        String medicinePrice = "Price: " + getIntent().getStringExtra("price");


        switch (getIntent().getStringExtra("dosage")) {
            case "Tablet":
                medicineImage.setImageResource(R.drawable.medicine1);
                break;
            case "Oral Suspension":
                medicineImage.setImageResource(R.drawable.medicine2);
                break;
            case "Syrup":
                medicineImage.setImageResource(R.drawable.medicine5);
                break;
            case "Pediatric Drops":
                medicineImage.setImageResource(R.drawable.medicine3);
                break;
            case "Suppository":
                medicineImage.setImageResource(R.drawable.medicine4);
                break;

        }

        getSupportActionBar().setTitle(medicineName);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);


        name.setText(medicineName);
        category.setText(medicineCategory);
        dosage.setText(medicineDosage);
        strength.setText(medicineStrength);
        packSize.setText(medicinePackSize);
        company.setText(medicineCompany);
        price.setText(medicinePrice);


    }
}
