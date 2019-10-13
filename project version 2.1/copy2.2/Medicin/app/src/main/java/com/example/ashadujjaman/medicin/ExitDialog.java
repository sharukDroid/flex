package com.example.ashadujjaman.medicin;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.Button;

public class ExitDialog extends Activity {


    private Button dialogYes,dialogNo;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.dialog_exit);

        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);


        int width = displayMetrics.widthPixels;
        int height = displayMetrics.heightPixels;

        getWindow().setLayout((int)(width*.8),(int)(height*.2));


        dialogYes = findViewById(R.id.dialog_yes);
        dialogNo = findViewById(R.id.dialog_no);

        dialogYes.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Intent.ACTION_MAIN);
                intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                intent.addCategory(Intent.CATEGORY_HOME);
                startActivity(intent);
                finish();
                System.exit(0);
            }

        });

        dialogNo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ExitDialog.this.finish();
            }
        });
    }
}
