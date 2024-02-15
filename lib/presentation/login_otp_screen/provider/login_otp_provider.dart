import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LoginOtpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  Future<bool> verifyOTP(String phoneNumber, String otp) async {
    try {
      var url = Uri.parse('https://your-django-api-endpoint.com/verify_otp/');
      var response = await http.post(
        url,
        body: {
          'phone_number': phoneNumber,
          'otp': otp,
        },
      );

      if (response.statusCode == 200) {
        // OTP verification successful
        var data = jsonDecode(response.body);
        return data['verified'];
      } else {
        // OTP verification failed
        return false;
      }
    } catch (error) {
      // Handle network errors or other exceptions
      print('Error verifying OTP: $error');
      return false;
    }
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
