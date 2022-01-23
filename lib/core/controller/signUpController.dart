import 'package:amaze/core/const.dart';
import 'package:amaze/core/controller/loaderState.dart';

import 'package:amaze/model/signUp404Model.dart';
import 'package:amaze/model/signUpModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final signUpProvider = StateNotifierProvider<SignUpNotifier, dynamic>((ref) {
  return SignUpNotifier(ref);
});

class SignUpNotifier extends StateNotifier<dynamic> {
  SignUpNotifier(this.ref) : super(null);

  final Ref ref;

  Future signUp(
      String? firstName,
      String? lastName,
      String? email,
      String? phoneNumber,
      String? companyName,
      int? primaryCelebrityCategory,
      String? celebrityAKA,
      String? jobTitle,
      String? userType,
      String? location,
      String? password,
      String? firebaseToken,
      BuildContext context) async {
    final sta = ref.watch(loaderStateProvider.notifier);
    sta.setState(LoaderStatus.LOADING);
    var url = baseUrl + "/User/account/signup";

    var finalUrl = Uri.parse(url);

    var response = await http.post(finalUrl, headers: {
      "Content-Type": "application/x-www-form-urlencoded; charset=utf-8",
      "Accept-Encoding": "gzip",
      "Content-Length": "263",
      "Host": "amaze-staging.us-east-2.elasticbeanstalk.com",
      "User-Agent": "Dart/2.14 (dart:io)",
    }, body: {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "phoneNumber": phoneNumber,
      "companyName": companyName,
      "primaryCelebrityCategory": primaryCelebrityCategory.toString(),
      "celebrityAKA": celebrityAKA,
      "jobTitle": jobTitle,
      "userType": userType,
      "location": location,
      "password": password,
      "firebaseToken": firebaseToken,
    });
    print(response.body);
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());

    if (response.statusCode == 200) {
      sta.setState(LoaderStatus.SUCCESS);
      print(
        SignUp404Model.fromJson(
          jsonDecode(response.body),
        ),
      );
      //Navigator.pushNamed(context, RouteGenerator.createAccount);
      return SignUpModel.fromJson(jsonDecode(response.body));
    } else {
      sta.setState(LoaderStatus.ERROR);
      state = "Unable to sign up\ntry again later";
      print(
        response.body,
      );
      print(response.statusCode);
      return SignUp404Model.fromJson(jsonDecode(response.body));
    }
  }
}
