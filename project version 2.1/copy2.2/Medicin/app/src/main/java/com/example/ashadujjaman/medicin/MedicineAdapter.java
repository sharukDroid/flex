package com.example.ashadujjaman.medicin;

import android.content.Context;
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

import java.util.ArrayList;
import java.util.List;

public class MedicineAdapter extends RecyclerView.Adapter<MedicineAdapter.ViewHolder> implements Filterable {

    private List<MedicineList> listItems;
    private  List<MedicineList> listItemsSearch;
    private Context context;
    private OnItemClickListener mListener;

    public interface OnItemClickListener{
        void onItemClick(int position);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener){
        mListener = onItemClickListener;
    }


    public MedicineAdapter(List<MedicineList> listItems, Context context) {
        this.listItems = listItems;
        this.context = context;
        listItemsSearch = new ArrayList<>(listItems);
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.medicine_list, viewGroup, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {

        final MedicineList medicineList = listItems.get(i);
        viewHolder.medicineName.setText(medicineList.getName());
        viewHolder.medicineCompany.setText(medicineList.getCompany());
        viewHolder.medicineDosage.setText(medicineList.getDosage());

        switch (medicineList.getDosage()) {
            case "Tablet":
                viewHolder.medicineImage.setImageResource(R.drawable.medicine1);
                break;
            case "Oral Suspension":
                viewHolder.medicineImage.setImageResource(R.drawable.medicine2);
                break;
            case "Syrup":
                viewHolder.medicineImage.setImageResource(R.drawable.medicine5);
                break;
            case "Pediatric Drops":
                viewHolder.medicineImage.setImageResource(R.drawable.medicine3);
                break;
            case "Suppository":
                viewHolder.medicineImage.setImageResource(R.drawable.medicine4);
                break;

        }


    }

    @Override
    public int getItemCount() {
        return listItems.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        public TextView medicineName;
        public TextView medicineCompany;
        public TextView medicineDosage;
        public ImageView medicineImage;
        public LinearLayout medicineCard;

        public ViewHolder(View itemView){
            super(itemView);

            medicineName = itemView.findViewById(R.id.medicine_name);
            medicineCompany = itemView.findViewById(R.id.medicine_company);
            medicineDosage = itemView.findViewById(R.id.medicine__dosage);
            medicineImage = itemView.findViewById(R.id.medicine_list_image);
            medicineCard = itemView.findViewById(R.id.medicine_card);







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
            List<MedicineList> filteredList = new ArrayList<>();

            if (constraint == null || constraint.length() == 0){
                filteredList.addAll(listItemsSearch);
            }else {
                String filterPattern = constraint.toString().toLowerCase().trim();

                for (MedicineList medicineList : listItemsSearch){
                    if (medicineList.getName().toLowerCase().contains(filterPattern)){
                        filteredList.add(medicineList);
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
