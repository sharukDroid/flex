package com.example.ashadujjaman.medicin;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

import java.io.IOException;
import java.util.List;

public class MapsActivity extends AppCompatActivity implements GoogleMap.OnInfoWindowClickListener,OnMapReadyCallback{

    int count=1;
    private GoogleMap mMap;
    LocationManager locationManager;
    private static final int REQUEST_LOCATION_PERMISSION = 1;
    Marker marker;
    LocationListener locationListener;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);
        locationManager = (LocationManager) getSystemService(LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(this,
                Manifest.permission.ACCESS_FINE_LOCATION)
                != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]
                            {Manifest.permission.ACCESS_FINE_LOCATION},
                    REQUEST_LOCATION_PERMISSION);
        }
        locationListener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                //get the location name from latitude and longitude
                Geocoder geocoder = new Geocoder(getApplicationContext());
                try {
                    List<Address> addresses =
                            geocoder.getFromLocation(latitude, longitude, 1);
                    String result = addresses.get(0).getLocality()+":";
                    result += addresses.get(0).getCountryName();
                    LatLng latLng = new LatLng(latitude, longitude);
                    if (marker != null){
                        marker.remove();
                        marker = mMap.addMarker(new MarkerOptions()
                                .position(latLng)
                                .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_VIOLET))
                                .title(result));
                        mMap.setMaxZoomPreference(100);
                        if (count==1) {
                            //mMap.moveCamera(CameraUpdateFactory.newLatLng(latLng));
                            mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng,14),5000,null);
                            count++;
                        }
                    }
                    else{
                        marker = mMap.addMarker(new MarkerOptions().position(latLng).title(result));
                        mMap.setMaxZoomPreference(100);
                        if (count==1) {
                            //mMap.moveCamera(CameraUpdateFactory.newLatLng(latLng));
                            mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng,14),5000,null);
                            count++;
                        }

                    }


                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onStatusChanged(String provider, int status, Bundle extras) {

            }

            @Override
            public void onProviderEnabled(String provider) {

            }

            @Override
            public void onProviderDisabled(String provider) {

            }
        };
        locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 0, 0, locationListener);
        locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, locationListener);
    }


    /**
     * Manipulates the map once available.
     * This callback is triggered when the map is ready to be used.
     * This is where we can add markers or lines, add listeners or move the camera. In this case,
     * we just add a marker near Sydney, Australia.
     * If Google Play services is not installed on the device, the user will be prompted to install
     * it inside the SupportMapFragment. This method will only be triggered once the user has
     * installed Google Play services and returned to the app.
     */
    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;



        // Add a marker in Sydney and move the camera
        LatLng square = new LatLng(23.702259, 90.422636);
        mMap.addMarker(new MarkerOptions().position(square).title("SQUARE hospitals Ltd.").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng ibnSina = new LatLng(23.751381, 90.368823);
        mMap.addMarker(new MarkerOptions().position(ibnSina).title("Ibn SIna Hospital").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng enam = new LatLng(23.837771, 90.252789);
        mMap.addMarker(new MarkerOptions().position(enam).title("Enam Medical College & Hospital").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng ibrahim = new LatLng(23.738980, 90.396483);
        mMap.addMarker(new MarkerOptions().position(ibrahim).title("Ibrahim Cardiac Hospital & Research Institute").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng bdEye = new LatLng(23.751671, 90.367334);
        mMap.addMarker(new MarkerOptions().position(bdEye).title("Bangladesh Eye Hospital").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng cantral = new LatLng(23.743437, 90.384093);
        mMap.addMarker(new MarkerOptions().position(cantral).title("Central Hospital").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng samorita = new LatLng(23.752707, 90.385194);
        mMap.addMarker(new MarkerOptions().position(samorita).title("Samorita Hospital").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng harun = new LatLng(23.743280, 90.382758);
        mMap.addMarker(new MarkerOptions().position(harun).title("Harun Eye Foundation Hospital").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng anwer = new LatLng(23.745263, 90.382073);
        mMap.addMarker(new MarkerOptions().position(anwer).title("Anwer Khan Modern Hospital Limited").snippet("9832579823794"));
        // Add a marker in Sydney and move the camera
        LatLng ahsania = new LatLng(23.710400, 90.407440);
        mMap.addMarker(new MarkerOptions().position(ahsania).title("Ahsania Mission General Cancer Hospital").snippet("9832579823794"));

//
//        mMap.setOnMarkerClickListener(new GoogleMap.OnMarkerClickListener() {
//            @Override
//            public boolean onMarkerClick(Marker marker) {
//                Intent call= new Intent(MapsActivity.this,HospitalActivity.class);
//                startActivity(call);
//                mMap.
//                return false;
//            }
//        });
//

        if (mMap!=null){
            mMap.setInfoWindowAdapter(new GoogleMap.InfoWindowAdapter() {
                @Override
                public View getInfoWindow(Marker marker) {
                    return null;
                }

                @Override
                public View getInfoContents(final Marker marker) {
                    View v = getLayoutInflater().inflate(R.layout.activity_map_info,null);

                    TextView textViewHead = v.findViewById(R.id.textViewHead_map);
                    TextView textViewDesc = v.findViewById(R.id.textViewDesc_map);

                    CardView hospitalCard = v.findViewById(R.id.hospital_card_map);
//                    Button mapCallButton = v.findViewById(R.id.map_cal_btn);

                    LatLng ll = marker.getPosition();
                    textViewHead.setText(marker.getTitle());
                    textViewDesc.setText(marker.getSnippet());

//                    hospitalCard.setOnClickListener(new View.OnClickListener() {
//                        @Override
//                        public void onClick(View v) {
//
//                            System.out.print("fhodsjgh");
//
//                            Intent callIntent = new Intent(Intent.ACTION_DIAL);
//                            callIntent.setData(Uri.parse("tel:123"));
//                            startActivity(callIntent);
//
//                        }
//                    });
//


//                    mapCallButton.setOnClickListener(new View.OnClickListener() {
//                        @Override
//                        public void onClick(View v) {
//                            Intent callIntent = new Intent(Intent.ACTION_DIAL);
//                            callIntent.setData(Uri.parse("tel:"+marker.getSnippet()));
//                            startActivity(callIntent);
//                        }
//                    });


                    return v;
                }
            });

        }

        mMap.setOnInfoWindowClickListener(this);


    }


    @Override
    public void onInfoWindowClick(Marker marker) {
        Intent callIntent = new Intent(Intent.ACTION_DIAL);
                            callIntent.setData(Uri.parse("tel:"+marker.getSnippet()));
                            startActivity(callIntent);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.map_options, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Change the map type based on the user's selection.
        switch (item.getItemId()) {
            case R.id.normal_map:
                mMap.setMapType(GoogleMap.MAP_TYPE_NORMAL);
                return true;
            case R.id.hybrid_map:
                mMap.setMapType(GoogleMap.MAP_TYPE_HYBRID);
                return true;
            case R.id.satellite_map:
                mMap.setMapType(GoogleMap.MAP_TYPE_SATELLITE);
                return true;
            case R.id.terrain_map:
                mMap.setMapType(GoogleMap.MAP_TYPE_TERRAIN);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}
