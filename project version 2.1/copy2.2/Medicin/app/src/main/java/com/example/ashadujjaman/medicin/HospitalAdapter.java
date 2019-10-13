package com.example.ashadujjaman.medicin;

import android.app.LauncherActivity;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.volley.Response;

import java.util.ArrayList;
import java.util.List;

public class HospitalAdapter extends RecyclerView.Adapter<HospitalAdapter.ViewHolder> implements Filterable {

    private  List<HospitalList> listItems;
    private  List<HospitalList> listItemsSearch;

    private Context context;
    private OnItemClickListener mListener;
    int count =0;

    public interface OnItemClickListener{
        void onItemClick(int position);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener){
        mListener = onItemClickListener;
    }


    public HospitalAdapter(List<HospitalList> listItems, Context context) {
        this.listItems = listItems;
        this.context = context;
        listItemsSearch = new ArrayList<>(listItems);
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.hospital_list, viewGroup, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {

        final HospitalList hospitalList = listItems.get(i);
        viewHolder.textViewHead.setText(hospitalList.getHead());
        viewHolder.textViewDesc.setText(hospitalList.getDesc());


    }

    @Override
    public int getItemCount() {
        return listItems.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        public TextView textViewHead;
        public TextView textViewDesc;
        private ImageView imageView;
        public LinearLayout hospitalCard;

        public ViewHolder(View itemView){
            super(itemView);

            textViewHead = itemView.findViewById(R.id.textViewHead);
            textViewDesc = itemView.findViewById(R.id.textViewDesc);
            hospitalCard = itemView.findViewById(R.id.hospital_card);
            imageView = itemView.findViewById(R.id.hospital_image);


            if (count == 0) {
                imageView.setImageResource(R.drawable.hospital);

                count++;
            }else if (count == 1) {
                imageView.setImageResource(R.drawable.hospital1);
                count++;
            }else if (count == 2) {
                imageView.setImageResource(R.drawable.hospital2);
                count++;
            }else if (count == 3) {
                imageView.setImageResource(R.drawable.hospital3);
                count++;
            }else if (count == 4) {
                imageView.setImageResource(R.drawable.hospital4);
                count++;
            }else if (count == 5) {
                imageView.setImageResource(R.drawable.hospital5);
                count = 0;
            }





            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (mListener != null){
                        int position = getAdapterPosition();
                        if (position != RecyclerView.NO_POSITION){
                            mListener.onItemClick(position);
                        }
                    }
                }
            });


        }

    }


    @Override
    public Filter getFilter() {
        return searchFilter;
    }

    private Filter searchFilter = new Filter() {
        @Override
        protected Filter.FilterResults performFiltering(CharSequence constraint) {
            List<HospitalList> filteredList = new ArrayList<>();

            if (constraint == null || constraint.length() == 0){
                filteredList.addAll(listItemsSearch);
            }else {
                String filterPattern = constraint.toString().toLowerCase().trim();

                for (HospitalList hospitalList : listItemsSearch){
                    if (hospitalList.getHead().toLowerCase().contains(filterPattern)){
                        filteredList.add(hospitalList);
                    }
                }
            }
            Filter.FilterResults results = new Filter.FilterResults();
            results.values = filteredList;

            return results;
        }

        @Override
        protected void publishResults(CharSequence constraint, Filter.FilterResults results) {

            listItems.clear();
            listItems.addAll((List)results.values);
            notifyDataSetChanged();
        }
    };


}
