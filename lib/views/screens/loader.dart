import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoaderScreen extends ConsumerWidget {
  const LoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      width: size.width,
      height: size.height,
      duration: Duration(milliseconds: 200),
      curve: Curves.bounceIn,
      child: 
    );
  }
}
