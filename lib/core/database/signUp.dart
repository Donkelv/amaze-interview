import 'package:amaze/core/const.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future signUp({required String? firstName, required String? lastName, required String? email, required String? phoneNumber, required String? companyName, required String? primaryCelebrityCategory, required String? celebrityAKA, required String? jobTitle,  required String? userType, required String? location, required String? password, required String? firebaseToken}) async {
  var url = baseUrl + "/User/account/signup";

  var finalUrl = Uri.parse(url);

  var response = await http.post(finalUrl, body: {
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
    "phoneNumber": phoneNumber,
    "companyName": companyName,
    "primaryCelebrityCategory": primaryCelebrityCategory,
    "celebrityAKA": celebrityAKA,
    "jobTitle": jobTitle,
    "userType": userType,
    "location": location,
    "password": password,
    "firebaseToken": firebaseToken,
  });
  debugPrint(response.body);
  debugPrint(response.statusCode.toString());
  return response;
}
