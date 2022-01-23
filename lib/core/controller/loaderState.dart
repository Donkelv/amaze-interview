import 'package:amaze/core/database/signUp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpStateNotifier extends StateNotifier<LoaderStatus> {
  SignUpStateNotifier(this.ref) : super(LoaderStatus.IDLE);

  final Ref ref;

  void signUpState(
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
      String? firebaseToken) {
    state = LoaderStatus.LOADING;
    signUp(
      firstName,
      lastName,
      email,
      phoneNumber,
      companyName,
      primaryCelebrityCategory,
      celebrityAKA,
      jobTitle,
      userType,
      location,
      password,
      firebaseToken,
    ).then((value) {
      state = LoaderStatus.LOADED;
    }).catchError((error) {
      state = LoaderStatus.LOADED;
    });
  }
}

enum LoaderStatus {
  IDLE,
  LOADING,
  LOADED,
}

final signUpStateProvider =
    StateNotifierProvider<SignUpStateNotifier, LoaderStatus>((ref) {
  return SignUpStateNotifier(ref);
});
