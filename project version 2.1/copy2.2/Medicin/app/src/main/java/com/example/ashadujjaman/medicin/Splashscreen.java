package com.example.ashadujjaman.medicin;

import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import gr.net.maroulis.library.EasySplashScreen;

public class Splashscreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        EasySplashScreen config = new EasySplashScreen(Splashscreen.this)
                .withFullScreen()
                .withTargetActivity(processbar.class)
                .withSplashTimeOut(2000)
                .withBackgroundColor(Color.parseColor("#E94C3D"))
                .withLogo(R.mipmap.ic_launcher)
                .withHeaderText("Welcome")
                .withFooterText("Devoloped By Sharuk Ahmed");
//                .withBeforeLogoText(" ")
//                .withAfterLogoText(" ");


        config.getHeaderTextView().setTextColor(android.graphics.Color.WHITE);
        config.getFooterTextView().setTextColor(android.graphics.Color.WHITE);
//        config.getAfterLogoTextView().setTextColor(android.graphics.Color.WHITE);
//        config.getBeforeLogoTextView().setTextColor(android.graphics.Color.WHITE);

        View view = config.create();

        setContentView(view);
    }
}
