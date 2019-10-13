package com.example.ashadujjaman.medicin;

import android.app.Dialog;
import android.content.Intent;
import android.provider.ContactsContract;
import android.support.annotation.NonNull;
import android.support.design.widget.NavigationView;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.CardView;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageButton;

public class MainActivity extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {
    CardView call,search,setting,doctor,medicine;
    private DrawerLayout drawerLayout;
    private Session session;
    private Dialog dialog;
    private ActionBarDrawerToggle actionBarDrawerToggle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        session = new Session(this);
//        createDialog();

        getSupportActionBar().setTitle("Home");


        // navigation drawer work

        drawerLayout= findViewById(R.id.drawer);
        actionBarDrawerToggle = new ActionBarDrawerToggle(this,drawerLayout,R.string.open,R.string.close);
        drawerLayout.addDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.syncState();
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        NavigationView navigationView = findViewById(R.id.navigation_view);
        navigationView.setNavigationItemSelectedListener(this);

        call= findViewById(R.id.call3);
        search=findViewById(R.id.search1);
        setting=findViewById(R.id.setting4);
        doctor=findViewById(R.id.plus2);
        medicine = findViewById(R.id.medicine);

        call.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent call= new Intent(MainActivity.this,DoctorInfoActivity.class);
                startActivity(call);
            }
        });
        search.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent search=new Intent(MainActivity.this,MapsActivity.class);
                startActivity(search);
            }
        });
        doctor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent doctor= new Intent(MainActivity.this, DoctorInformation.class);
                startActivity(doctor);
            }
        });
        setting.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent setting= new Intent(MainActivity.this,AdminActivity.class);
                startActivity(setting);
            }
        });

        medicine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent medicineIntent= new Intent(MainActivity.this,MedicineInfoActivity.class);
                startActivity(medicineIntent);
            }
        });

    }

    @Override
    public void onBackPressed() {
        startActivity(new Intent(MainActivity.this,ExitDialog.class));
        //super.onBackPressed();
    }
    //    private void createDialog() {
//        dialog = new Dialog(this);
//        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
//        dialog.setContentView(R.layout.dialog_exit);
//        dialog.setCanceledOnTouchOutside(true);
//        dialog.setCancelable(true);
//        dialogYes = findViewById(R.id.dialog_yes);
//        dialogNo = findViewById(R.id.dialog_no);
//
//
//        dialogYes.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                Intent intent = new Intent(Intent.ACTION_MAIN);
//                intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
//                intent.addCategory(Intent.CATEGORY_HOME);
//                startActivity(intent);
//                finish();
//                System.exit(0);
//
//
//                dialogNo.setOnClickListener(new View.OnClickListener() {
//                    @Override
//                    public void onClick(View v) {
//                        dialog.dismiss();
//                    }
//                });
//
//            }
//
//
//        });
//
//
//
//    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (actionBarDrawerToggle.onOptionsItemSelected(item)){
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {

        int id = menuItem.getItemId();

        if (id == R.id.home){


        }

        if (id == R.id.location){
            Intent search=new Intent(MainActivity.this,MapsActivity.class);
            startActivity(search);

        }

        if (id == R.id.hospital_info){
            Intent doctor= new Intent(MainActivity.this, DoctorInformation.class);
            startActivity(doctor);


        }

        if (id == R.id.doctor_info){
            Intent call= new Intent(MainActivity.this,DoctorInfoActivity.class);
            startActivity(call);

        }

        if (id == R.id.admin_panel){
            Intent setting= new Intent(MainActivity.this,AdminActivity.class);
            startActivity(setting);

        }

        if (id == R.id.logout){

            session.setLoggedin(false);
            Intent logout= new Intent(MainActivity.this,LoginActivity.class);
            startActivity(logout);

        }

        return false;
    }
}
