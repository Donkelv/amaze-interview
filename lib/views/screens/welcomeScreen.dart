import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/routes/routeGenerator.dart';
import 'package:amaze/views/widgets/borderedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(donJazzy),
            fit: BoxFit.cover,
          )),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      gradient2,
                      gradient1,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              )),
              Positioned(
                bottom: 39.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconContainer(),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    SvgPicture.asset(logoSvg, fit: BoxFit.scaleDown,),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Text("Amaze   We help bridge the gap between celebrities and their fans.", style:  CustomTheme.normalText(context).copyWith(color: whiteColor,),),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    CustomBorderedButton(
                      color: Colors.transparent,
                      borderColor: whiteColor,
                      text: "Login",
                      textCol: whiteColor,
                      onPressed: () {
                        
                      },
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    CustomBorderedButton(
                      color: Colors.transparent,
                      borderColor: primaryColorShade1,
                      text: "Create an Account",
                      textCol: primaryColorShade1,
                      onPressed: () {
                        Navigator.pushNamed(context, RouteGenerator.signUp);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget iconContainer() {
  return Container(
    height: 30.0.h,
    width: 30.0.w,
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
        color: greenColor,
        width: 1.0,
      ),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: SvgPicture.asset(speakerIcon, fit: BoxFit.scaleDown,),
    ),
  );
}
