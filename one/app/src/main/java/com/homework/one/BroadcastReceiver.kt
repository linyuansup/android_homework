package com.homework.one

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import android.widget.Toast

class BroadcastReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        Log.i("tag", "onReceive: ")
        if (intent?.action == "com.homework.one.broadcast" && context != null) {
            Toast.makeText(context, "收到下线通知", Toast.LENGTH_SHORT).show()
        }
    }
}