package com.example.ashadujjaman.medicin;

import android.app.ProgressDialog;
import android.content.Intent;
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

public class MedicineInfoActivity extends AppCompatActivity implements MedicineAdapter.OnItemClickListener {

    private  static final String URL_DATA = "https://api.myjson.com/bins/e0azi";
//    private  static final String URL_DATA = "https://api.myjson.com/bins/18170u";

    private RecyclerView recyclerView;
    private MedicineAdapter adapter;

    private List<MedicineList> listItems;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_medicine_info);

        getSupportActionBar().setTitle("Medicines");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        recyclerView = findViewById(R.id.medicineRecyclerView);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));

        listItems = new ArrayList<>();

        loadRecyclerViewData();
    }


    private void loadRecyclerViewData() {

        final ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Loading data...");
        progressDialog.show();

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
                                MedicineList item = new MedicineList(
                                        o.getString("Name"),
                                        o.getString("Category"),
                                        o.getString("Dosage"),
                                        o.getString("Strength"),
                                        o.getString("Company"),
                                        o.getString("Pack_Size"),
                                        o.getString("Price")
                                );
                                listItems.add(item);

                            }
                            adapter = new MedicineAdapter(listItems, getApplicationContext());
                            recyclerView.setAdapter(adapter);
                            adapter.setOnItemClickListener(MedicineInfoActivity.this);

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

        final MedicineList medicineList = listItems.get(position);
        Intent medicine = new Intent(this,Medicine.class);
        medicine.putExtra("name",medicineList.getName());
        medicine.putExtra("category",medicineList.getCatagory());
        medicine.putExtra("dosage",medicineList.getDosage());
        medicine.putExtra("strength",medicineList.getStrength());
        medicine.putExtra("packSize",medicineList.getPackSize());
        medicine.putExtra("company",medicineList.getCompany());
        medicine.putExtra("price",medicineList.getPrice());
        startActivity(medicine);
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
