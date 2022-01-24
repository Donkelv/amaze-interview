import 'package:flutter_riverpod/flutter_riverpod.dart';

class CelebNotifier extends StateNotifier<String> {
  CelebNotifier(this.ref) : super("");

  final Ref ref;

  void setCeleb(String celeb) {
    state = celeb;
  }
}

final celebProvider = StateNotifierProvider<CelebNotifier, String>((ref) {
  return CelebNotifier(ref);
});
