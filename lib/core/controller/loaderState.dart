
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoaderStateNotifier extends StateNotifier<LoaderStatus> {
  LoaderStateNotifier(this.ref) : super(LoaderStatus.IDLE);

  final Ref ref;

  void setState(LoaderStatus status) {
    state = status;
  }
}



enum LoaderStatus {
  IDLE,
  LOADING,
  SUCCESS,
  ERROR,
}



final loaderStateProvider =
    StateNotifierProvider<LoaderStateNotifier, LoaderStatus>((ref) {
  return LoaderStateNotifier(ref);
});
