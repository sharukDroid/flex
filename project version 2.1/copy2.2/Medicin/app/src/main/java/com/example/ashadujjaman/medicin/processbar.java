package com.example.ashadujjaman.medicin;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ProgressBar;

public class processbar extends AppCompatActivity {
    ProgressBar pgbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_processbar);
        pgbar = findViewById(R.id.progressBar);

        loadView();
    }

    private void loadView() {
        Thread thread = new Thread(){
            @Override
            public void  run(){
                super.run();
                for(int i=0;i<100;){
                    try{
                        sleep(1000);
                    }
                    catch (InterruptedException e){
                        e.printStackTrace();
                    }
                    pgbar.setProgress(i);
                    i=i+50;
                    if(i==100){
                        Intent intent = new Intent(processbar.this,LoginActivity.class);
                        startActivity(intent);
                        finish();
                    }
                }
            }
        };
        thread.start();
    }
}
