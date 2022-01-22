import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createAccountController = Provider<PageController>((ref) {
  PageController pageController = PageController(initialPage: 0);
  return pageController;
});