import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/core/controller/loaderState.dart';
import 'package:amaze/core/controller/signUpController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoaderScreen extends ConsumerWidget {
  final Widget? child;
  const LoaderScreen( {Key? key, this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      width: size.width,
      height: size.height,
      color: whiteColor,
      duration: Duration(milliseconds: 200),
      curve: Curves.bounceIn,
      child: 
      ref.watch(loaderStateProvider) == LoaderStatus.LOADING ?
      Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(primaryColor),
        
        ),
      ) 
      : ref.watch(loaderStateProvider) == LoaderStatus.ERROR ?
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.error, color: Colors.red, size: 60,),
            SizedBox(height: 20.0.h,),
            Text(ref.watch(signUpProvider).toString(), 
            textAlign: TextAlign.center,
            style: CustomTheme.normalText(context).copyWith(fontWeight: FontWeight.w500,),), 
          ]
        )
      )
      : ref.watch(loaderStateProvider) == LoaderStatus.SUCCESS ?
      child
      :
      Container(),
    );
  }
}
