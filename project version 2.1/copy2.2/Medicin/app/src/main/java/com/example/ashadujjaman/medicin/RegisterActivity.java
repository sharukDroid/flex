package com.example.ashadujjaman.medicin;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


public class RegisterActivity extends AppCompatActivity implements View.OnClickListener{

    private Button reg, login;

    private TextView tvRegister;

    private EditText etEmail, etPass, etFirstName, etLastName, etUserName, etReenterPass;

    private DbHelper db;

    RelativeLayout rellay1, rellay2;

    Handler handler = new Handler();
    Runnable runnable = new Runnable() {
        @Override
        public void run() {
            rellay1.setVisibility(View.VISIBLE);
            rellay2.setVisibility(View.VISIBLE);
        }
    };

    @Override

    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_register);

        rellay1 = (RelativeLayout) findViewById(R.id.rellay1);
        rellay2 = (RelativeLayout) findViewById(R.id.rellay2);

        handler.postDelayed(runnable, 2000); //2000 is the timeout for the splash



        db = new DbHelper(this);

        reg = (Button)findViewById(R.id.btnReg);
        login = (Button)findViewById(R.id.btnLogin);

        tvRegister = (TextView)findViewById(R.id.tv_register);

        etEmail = (EditText)findViewById(R.id.etFirstName);

        etPass = (EditText)findViewById(R.id.etLastName);

        etEmail = (EditText)findViewById(R.id.etUserName);

        etEmail = (EditText)findViewById(R.id.etEmail);

        etPass = (EditText)findViewById(R.id.etPass);

        etPass = (EditText)findViewById(R.id.etReenterPass);

        reg.setOnClickListener(this);

        login.setOnClickListener(this);

    }



    @Override

    public void onClick(View v) {

        switch(v.getId()){

            case R.id.btnReg:

                register();

                break;

            case R.id.btnLogin:

                startActivity(new Intent(RegisterActivity.this,LoginActivity.class));

                finish();

                break;

            default:



        }

    }



    private void register(){

        String email = etEmail.getText().toString();

        String pass = etPass.getText().toString();

        if(email.isEmpty() && pass.isEmpty()){

            displayToast("Username/password field empty");

        }else{

            db.addUser(email,pass);

            displayToast("User registered");

            finish();
            startActivity(new Intent(RegisterActivity.this,LoginActivity.class));

        }

    }



    private void displayToast(String message){

        Toast.makeText(getApplicationContext(), message, Toast.LENGTH_SHORT).show();

    }

}