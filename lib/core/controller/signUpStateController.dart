import 'package:amaze/core/database/signUp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpState = FutureProvider((ref,
    {String? firstName,
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
    String? firebaseToken}) async {
  return signUp(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumber: phoneNumber,
      companyName: companyName,
      primaryCelebrityCategory: primaryCelebrityCategory,
      celebrityAKA: celebrityAKA,
      jobTitle: jobTitle,
      userType: userType,
      location: location,
      password: password,
      firebaseToken: firebaseToken);
});
