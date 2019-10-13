package com.example.ashadujjaman.medicin;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class DoctorAdapter extends RecyclerView.Adapter<DoctorAdapter.ViewHolder> implements Filterable {


    private List<DoctorList> listItems;
    private  List<DoctorList> listItemsSearch;
    private Context context;
    private OnItemClickListener mListener;

    public interface OnItemClickListener{
        void onItemClick(int position);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener){
        mListener = onItemClickListener;
    }


    public DoctorAdapter(List<DoctorList> listItems, Context context) {
        this.listItems = listItems;
        this.context = context;
        listItemsSearch = new ArrayList<>(listItems);
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.doctor_list, viewGroup, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {

        final DoctorList doctorList = listItems.get(i);
        viewHolder.doctorTextViewHead.setText(doctorList.getName());
        viewHolder.doctorTextViewDesc.setText(doctorList.getDegree());


    }

    @Override
    public int getItemCount() {
        return listItems.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        public TextView doctorTextViewHead;
        public TextView doctorTextViewDesc;
        public LinearLayout doctorCard;

        public ViewHolder(View itemView){
            super(itemView);

            doctorTextViewHead = itemView.findViewById(R.id.doctorTextViewHead);
            doctorTextViewDesc = itemView.findViewById(R.id.doctorTextViewDesc);
            doctorCard = itemView.findViewById(R.id.doctor_card);

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
            List<DoctorList> filteredList = new ArrayList<>();

            if (constraint == null || constraint.length() == 0){
                filteredList.addAll(listItemsSearch);
            }else {
                String filterPattern = constraint.toString().toLowerCase().trim();

                for (DoctorList doctorList : listItemsSearch){
                    if (doctorList.getName().toLowerCase().contains(filterPattern)){
                        filteredList.add(doctorList);
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
