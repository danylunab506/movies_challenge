import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void showErrorAlert(BuildContext context, String errorMessage, VoidCallback onRetry) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/lottie/error.json',
                height: 100,
                repeat: true,
              ),

              SizedBox(height: 10),

              Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("OK"),
              ),
            ],
          ),
        ),
      );
    },
  );
}