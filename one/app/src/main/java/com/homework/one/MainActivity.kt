package com.homework.one

import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import android.util.Log
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.homework.one.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding
    private val receiver = BroadcastReceiver()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }
        initAction()
        registerReceiver(receiver, IntentFilter().apply {
            addAction("com.homework.one.broadcast")
        }, RECEIVER_EXPORTED)
    }

    private fun initAction() {
        binding.apply {
            leftButton.setOnClickListener { sendBroadcast() }
            centerButton.setOnClickListener { sendBroadcast() }
            rightButton.setOnClickListener { sendBroadcast() }
        }
    }

    private fun sendBroadcast() {
        sendBroadcast(Intent("com.homework.one.broadcast"))
    }

    override fun onDestroy() {
        super.onDestroy()
        unregisterReceiver(receiver)
    }
}