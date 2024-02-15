import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/login_screen/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();
  LoginModel loginModelObj = LoginModel();
  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }

  Future<void> checkPhoneNumberExists(BuildContext context) async {
    String phoneNumber = phoneNumberController.text.trim();

    if (phoneNumber.isEmpty) {
      // Show error message or handle empty phone number
      return;
    }

    // Make a request to your backend to check if the phone number exists
    var url = Uri.parse('http://your-backend-url/check_phone_number?phone_number=$phoneNumber');

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // If the phone number exists, navigate to OTP screen
        NavigatorService.pushNamed(
          AppRoutes.loginOtpScreen,
          arguments: phoneNumber, // Pass the phone number to the OTP screen
        );
      } else {
        // Handle the case where the phone number does not exist
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Phone number does not exist.'),
        ));
      }
    } catch (e) {
      print('Error checking phone number: $e');
      // Handle network errors or other exceptions
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('An error occurred while checking the phone number.'),
      ));
    }
  }
}
