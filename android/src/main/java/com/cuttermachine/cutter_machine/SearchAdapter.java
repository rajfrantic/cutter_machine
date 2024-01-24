package com.cuttermachine.cutter_machine;

//package com.cuttermachine.cutter_machine;
//
//import com.chad.library.adapter.base.BaseQuickAdapter;
//import com.chad.library.adapter.base.viewholder.BaseViewHolder;
//import com.inuker.bluetooth.library.search.SearchResult;
//
//import org.jetbrains.annotations.NotNull;
//import org.jetbrains.annotations.Nullable;
//
//import java.util.List;
//
//public class SearchAdapter extends BaseQuickAdapter<SearchResult , BaseViewHolder> {
//
//    public SearchAdapter(int layoutResId, @Nullable List<SearchResult> data) {
//        super(layoutResId, data);
//    }
//
//
//    @Override
//    protected void convert(@NotNull BaseViewHolder baseViewHolder, SearchResult searchResult) {
////        baseViewHolder.setText(R.id.id_item_title_textView,searchResult.getName());
//    }
//}
public  class SearchAdapter  {
    final String name;
    final String Address;

    public SearchAdapter(String name, String address) {
        this.name = name;
        this.Address = address;
    }
}
