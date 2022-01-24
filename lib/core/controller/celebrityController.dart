import 'package:amaze/core/controller/celebNotifier.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final celebrityControllerProvider = Provider<TextEditingController>((ref) {
  TextEditingController celebrityController = TextEditingController();
  celebrityController.text = ref.watch(celebProvider);
  return celebrityController;
});
