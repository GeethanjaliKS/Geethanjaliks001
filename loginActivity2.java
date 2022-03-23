package com.example.signupapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class loginActivity2 extends AppCompatActivity {
    EditText emailEditText,passwordEditText;
    Button loginBtn;
    int counter=2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login2);
        emailEditText=findViewById(R.id.EmailEditText);
        passwordEditText=findViewById(R.id.PasswordEditText);
        loginBtn=findViewById(R.id.LoginBtn);
        String registeredEmail=getIntent().getStringExtra("email");
        String registeredPassword=getIntent().getStringExtra("password");
        loginBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String email=emailEditText.getText().toString();
                String password=passwordEditText.getText().toString();
                if(registeredEmail.equals(email)&&registeredPassword.equals(password)){
                    Intent intent=new Intent(loginActivity2.this,LoginSuccess.class);
                    startActivity(intent);


                }
                else{
                    Toast.makeText(loginActivity2.this, "invalid credentials", Toast.LENGTH_SHORT).show();
                }
                counter--;
                if(counter==0)
                {
                    loginBtn.setEnabled(false);
                }




            }
        });
    }
}