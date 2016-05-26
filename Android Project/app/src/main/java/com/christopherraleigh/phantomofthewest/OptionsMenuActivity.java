package com.christopherraleigh.phantomofthewest;

import android.os.Bundle;
import android.preference.PreferenceActivity;

public class OptionsMenuActivity extends PreferenceActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getFragmentManager().beginTransaction().replace(android.R.id.content,
                new OptionsMenuFragment()).commit();
        getActionBar().setDisplayShowTitleEnabled(true);
    }
}
