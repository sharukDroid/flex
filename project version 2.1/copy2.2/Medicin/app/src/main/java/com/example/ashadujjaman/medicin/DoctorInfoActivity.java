package com.example.ashadujjaman.medicin;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.v4.app.NavUtils;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.inputmethod.EditorInfo;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class DoctorInfoActivity extends AppCompatActivity implements DoctorAdapter.OnItemClickListener {


    private  static final String URL_DATA = "https://api.myjson.com/bins/1d89o2";

    private RecyclerView recyclerView;
    private DoctorAdapter adapter;

    private List<DoctorList> listItems;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_doctor_info);

        getSupportActionBar().setTitle("Doctors");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        recyclerView = findViewById(R.id.doctor_recyclerView);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));

        String hospitalName = getIntent().getStringExtra("hospitalName");


        listItems = new ArrayList<>();

        loadRecyclerViewData(hospitalName);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        switch (item.getItemId()){
            case android.R.id.home:
//                //NavUtils.navigateUpFromSameTask(this);
                this.onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }

    }


    private void loadRecyclerViewData(String hospitalName) {

        final ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Loading data...");
        progressDialog.show();

//        String URL_DATA = null;
//
//        switch (hospitalName) {
//            case "SQUARE hospitals Ltd.":
//                URL_DATA = "https://api.myjson.com/bins/1fg3ti";
//                break;
//            case "Ibn SIna Hospital":
//                URL_DATA = "https://api.myjson.com/bins/1fg3ti";
//                break;
//            case "Enam Medical College & Hospital":
//                URL_DATA = "https://api.myjson.com/bins/6ce6y";
//                break;
//            case "Ibrahim Cardiac Hospital & Research Institute":
//                URL_DATA = "https://api.myjson.com/bins/18kf8a";
//                break;
//            case "Bangladesh Eye Hospital":
//                URL_DATA = "https://api.myjson.com/bins/1fg3ti";
//                break;
//            case "Central Hospital":
//                URL_DATA = "https://api.myjson.com/bins/ampqy";
//                break;
//            case "Samorita Hospital":
//                URL_DATA = "https://api.myjson.com/bins/1fg3ti";
//                break;
//            case "Harun Eye Foundation Hospital":
//                URL_DATA = "https://api.myjson.com/bins/j0xdm";
//                break;
//            case "Anwer Khan Modern Hospital Limited":
//                URL_DATA = "https://api.myjson.com/bins/qrk8q";
//                break;
//            case "Ahsania Mission General Cancer Hospital":
//                 URL_DATA = "https://api.myjson.com/bins/1fg3ti";
//                break;
//            default:
//                URL_DATA = "https://api.myjson.com/bins/1d89o2";
//    }


        StringRequest stringRequest = new StringRequest(Request.Method.GET, URL_DATA,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        progressDialog.dismiss();
                        try {
                            JSONObject jsonObject = new JSONObject(response);
                            JSONArray array = jsonObject.getJSONArray("contacts");

                            for (int i = 0; i<array.length(); i++){
                                JSONObject o = array.getJSONObject(i);
                                DoctorList item = new DoctorList(
                                        o.getString("name"),
                                        o.getString("speciality"),
                                        o.getString("degree"),
                                        o.getString("time")
                                );
                                listItems.add(item);

                            }
                            adapter = new DoctorAdapter(listItems, getApplicationContext());
                            recyclerView.setAdapter(adapter);
                            adapter.setOnItemClickListener(DoctorInfoActivity.this);

                        } catch (JSONException e) {
                            progressDialog.dismiss();
                            e.printStackTrace();
                        }


                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                }
        );
        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);
    }


    @Override
    public void onItemClick(int position) {

        final DoctorList doctorList = listItems.get(position);
        Intent doctor = new Intent(this,DoctorAppointment.class);
        doctor.putExtra("name",doctorList.getName());
        doctor.putExtra("degree",doctorList.getDegree());
        doctor.putExtra("speciality",doctorList.getSpeciality());
        doctor.putExtra("time", doctorList.getTime());
        startActivity(doctor);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.search_menu,menu);

        MenuItem searchItem = menu.findItem(R.id.action_search);
        android.support.v7.widget.SearchView searchView = (android.support.v7.widget.SearchView) searchItem.getActionView();

        searchView.setImeOptions(EditorInfo.IME_ACTION_DONE);

        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String s) {
                return false;
            }

            @Override
            public boolean onQueryTextChange(String s) {
                adapter.getFilter().filter(s);
                return false;
            }
        });
        return true;
    }

}
