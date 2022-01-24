import 'package:email_validator/email_validator.dart';

class Validator {
  String? validateEmail(String value) {
    final bool isValid = EmailValidator.validate(value);
    if (isValid == false) {
      return "Invalid email, pls check and try again";
    } else {
      return null;
    }
  }

  String? validateEmptyField(String value, String title) {
    if (value.isEmpty) {
      // ignore: unnecessary_null_comparison
      return title == null ? "" : "Please enter $title";
    } else {
      return null;
    }
  }

  String? validateExpiry(String value) {
    if (value.length < 5) {
      return "Invalid expiry date, pls correct and continue";
    } else {
      return null;
    }
  }

  String? validateCvv(String value) {
    if (value.length < 3) {
      return "Invalid CVV, pls correct and continue";
    } else {
      return null;
    }
  }

  String? validatePin(String value) {
    if (value.length < 4) {
      return "Invalid pin, pls correct and continue";
    } else {
      return null;
    }
  }

  String? validateNumberField(String value) {
    if (value.length < 9) {
      return "Phone number must be greater than 9 characters";
    } else {
      return null;
    }
  }
}