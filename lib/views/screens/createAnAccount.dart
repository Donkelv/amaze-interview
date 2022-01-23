import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/createAccountList.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/views/screens/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAnAccount extends StatefulWidget {
  const CreateAnAccount({Key? key}) : super(key: key);

  @override
  _CreateAnAccountState createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          bottom: false,
          top: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    return backButtonCreatAccount(
                      context: context, 
                      svg: backIcon, 
                      onPressed: () {  
                        currentIndex == 0 ?
                        Navigator.pop(context)
                        :
                        ref.watch(createAccountController).previousPage(
                          duration: Duration(milliseconds: 150),
                          curve: Curves.easeOut,);
                      },);
                  },
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Container(
                width: size.width,
                height: 2.0.h,
                color: whiteColorShade1,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 7; i++)
                            AnimatedContainer(
                              width: size.width / 7,
                              height: 2.0.h,
                              color: i <= currentIndex
                                  ? primaryColorShade2
                                  : whiteColorShade1,
                              duration: Duration(
                                milliseconds: 150,
                              ),
                              curve: Curves.easeIn,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Expanded(
                child: Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    return PageView.builder(
                      controller: ref.watch(createAccountController),
                      scrollDirection: Axis.horizontal,
                      itemCount: createAccountList!.length,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (int value) {
                        setState(() {
                          currentIndex = value;
                        });
                        //pageController.nextPage(duration: duration, curve: curve)
                      },
                      itemBuilder: (context, index) {
                        return createAccountList![index];
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget backButtonCreatAccount({required BuildContext context, required String? svg, required VoidCallback? onPressed}) {
  return Container(
    width: 32.0.w,
    height: 32.0.h,
    decoration: BoxDecoration(
      color: whiteColorShade1,
      shape: BoxShape.circle,
    ),
    child: Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        child: SvgPicture.asset(
          svg!,
          fit: BoxFit.scaleDown,
        ),
      ),
    ),
  );
}
