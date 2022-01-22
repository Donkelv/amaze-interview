import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/borderTextFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
          color: whiteColor,
          child: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.0.h,
                    ),
                    backButton(context),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(signUp),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("Create an Account", style: CustomTheme.mediumText(context), textAlign: TextAlign.center,),
              
                    ),
                    SizedBox(
                      height: 5.0.h,
                    
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 26.0.w),
                        child: Text("And access the richest collection of celebrities and amaze-ing people", style: CustomTheme.smallText(context), textAlign: TextAlign.center,),
                      ),
              
                    ),
                    SizedBox(
                      height: 35.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BorderTextFieldWidget(
                            text: "First name", 
                            keyboardType: TextInputType.name,),
                        ),
                          SizedBox(
                            width: 30.0.w,
                          ),
                        Expanded(
                          child: BorderTextFieldWidget(
                            text: "Last name", 
                            keyboardType: TextInputType.name,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                            text: "Celebrity AKA", 
                            keyboardType: TextInputType.name,),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                            text: "Email Address", 
                            keyboardType: TextInputType.emailAddress,),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BorderTextFieldWidget(
                            text: "First name", 
                            keyboardType: TextInputType.name,),
                        ),
                          SizedBox(
                            width: 30.0.w,
                          ),
                        Expanded(
                          child: BorderTextFieldWidget(
                            text: "Last name", 
                            keyboardType: TextInputType.name,),
                        ),
                      ],
                    ),
                      
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



Widget backButton(BuildContext context) {
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
        onTap: () => Navigator.pop(context),
        child: SvgPicture.asset(backIcon, fit: BoxFit.scaleDown,),
      ),
    ),
  );
}
