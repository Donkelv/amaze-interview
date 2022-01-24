import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/screens/createAnAccount.dart';
import 'package:amaze/views/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

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
        body: Container(
          width: size.width,
          height: size.height,
          child: SafeArea(
            top: true,
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0.h,
                
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50.0.w,
                        height: 50.0.h,
                        decoration: BoxDecoration(
                          color: whiteColorShade2,
                          shape: BoxShape.circle,
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Hello, MrMacaronii\n",
                          style: CustomTheme.normalText(context).copyWith(fontWeight: FontWeight.w700,),
                          children: [
                            TextSpan(
                              text: "You have 0 scheduled tasks",
                              style: CustomTheme.normalText(context).copyWith(fontWeight: FontWeight.w300,),
                            ),
                          ],
                        ),
                      ),
                      backButtonCreatAccount(
                        context: context, 
                        svg: notification,
                        onPressed: (){

                        },)
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 71.0.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(emptyHome, fit: BoxFit.scaleDown, height: 93.0.h, width: 83.0.w),
                ),
                SizedBox(
                  height: 32.0.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("No Requests yet", style: CustomTheme.mediumText(context).copyWith( color: textColor3),),
                ),
                SizedBox(
                  height: 12.0.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 68.0.w),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("You currently don’t have any request, all request will appear here",
                    textAlign: TextAlign.center, 
                    style: CustomTheme.normalText(context).copyWith( color: textColor3),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}