import 'package:amaze/core/const.dart';
import 'package:amaze/model/signUp404Model.dart';
import 'package:amaze/model/signUpModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

Future signUp(
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    String? companyName,
    String? primaryCelebrityCategory,
    String? celebrityAKA,
    String? jobTitle,
    String? userType,
    String? location,
    String? password,
    String? firebaseToken) async {
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

  if (response.statusCode == 200) {
    print(
      SignUp404Model.fromJson(
        jsonDecode(response.body),
      ),
    );
    return SignUpModel.fromJson(jsonDecode(response.body));
  } else {
    print(
      SignUp404Model.fromJson(
        jsonDecode(response.body),
      ),
    );
    return SignUp404Model.fromJson(jsonDecode(response.body));
  }
}
