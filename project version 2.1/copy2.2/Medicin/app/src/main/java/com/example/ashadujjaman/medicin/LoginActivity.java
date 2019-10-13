package com.example.ashadujjaman.medicin;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


public class LoginActivity extends AppCompatActivity implements View.OnClickListener{

    private Button login, register,forgetPass;

    private EditText etEmail, etPass;


    RelativeLayout rellay1, rellay2;

    Handler handler = new Handler();
    Runnable runnable = new Runnable() {
        @Override
        public void run() {
            rellay1.setVisibility(View.VISIBLE);
            rellay2.setVisibility(View.VISIBLE);
        }
    };
   // private DbHelper db;
    private Session session;

    @Override

    protected void onCreate(Bundle savedInstanceState) {

        //startActivity(new Intent(LoginActivity.this, MainActivity.class));

        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_login);


        rellay1 = findViewById(R.id.rellay1);
        rellay2 = findViewById(R.id.rellay2);

        handler.postDelayed(runnable, 2000); //2000 is the timeout for the splash


        // db = new DbHelper(this);

        session = new Session(this);


       // imgView_logo = (ImageView) findViewById(R.id.imgView_logo);
       // tv_login = (TextView)findViewById(R.id.tv_login);
        forgetPass = (Button)findViewById(R.id.btnForgetPass);
         login = findViewById(R.id.btnLogin);

        register = findViewById(R.id.btnReg);

        etEmail = findViewById(R.id.etEmail);

        etPass = findViewById(R.id.etPass);

        login.setOnClickListener(this);

        register.setOnClickListener(this);



        if(session.loggedin()){

            startActivity(new Intent(LoginActivity.this,MainActivity.class));

            finish();

        }

    }



    @Override

    public void onClick(View v) {

        switch(v.getId()){

            case R.id.btnLogin:

                //dummy code for pre-defence
//                startActivity(new Intent(LoginActivity.this,MainActivity.class));

                String email = etEmail.getText().toString();
                String pass = etPass.getText().toString();

                if (email.equals("sharuk") && pass.equals("abc123")){
                    startActivity(new Intent(LoginActivity.this,MainActivity.class));
                    session.setLoggedin(true);
                }
                else {
                    etEmail.setText("");
                    etPass.setText("");
                    etEmail.setHint("Wrong UserName");
                    etPass.setHint("Wrong Password");
                }






                //finish();
                //login();

                break;

            case R.id.btnReg:

                startActivity(new Intent(LoginActivity.this,RegisterActivity.class));

                break;

            default:



        }

    }



    private void login(){

        String email = etEmail.getText().toString();

        String pass = etPass.getText().toString();


        String type = "login";

        BackgorundWorker backgorundWorker = new BackgorundWorker(this);
        backgorundWorker.execute(type, email, pass);
/*

        if(db.getUser(email,pass)){

            session.setLoggedin(true);

            startActivity(new Intent(LoginActivity.this, MainActivity.class));

            finish();

        }else{

            Toast.makeText(getApplicationContext(), "Wrong email/password",Toast.LENGTH_SHORT).show();

        }
*/
    }

}