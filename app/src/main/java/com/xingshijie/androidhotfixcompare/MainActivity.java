package com.xingshijie.androidhotfixcompare;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import com.xingshijie.androidhotfixcompare.test.A;

public class MainActivity extends AppCompatActivity {

    private A a = new A();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ((TextView) findViewById(R.id.text_view)).setText(a.getString());
    }
}
