import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/constants/telConst.dart';
import 'package:amaze/core/controller/loaderState.dart';
import 'package:amaze/core/controller/signUpController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/routes/routeGenerator.dart';
import 'package:amaze/views/widgets/borderTextFieldWidget.dart';
import 'package:amaze/views/widgets/borderedDropdownWidget.dart';
import 'package:amaze/views/widgets/customIconButton.dart';
import 'package:amaze/views/widgets/primaryCelebBottomSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegExp regExCapitalLetter = new RegExp(r'[A-Z]');
  RegExp regExSmallLetter = new RegExp(r'[a-z]');
  RegExp regSpecialChar = new RegExp(r'[!@#\$%\^&\*]');

  bool? capitalLetter;
  bool? smallLetter;
  bool? specialCharcaters;

  TextEditingController? firstName;
  TextEditingController? lastName;
  TextEditingController? celebrity;
  TextEditingController? email;
  TextEditingController? phoneNumber;
  TextEditingController? country;
  TextEditingController?city;
  TextEditingController? primcelebCategory;
  TextEditingController? password;


  @override
  void initState() {
    firstName = TextEditingController();
    lastName = TextEditingController();
    celebrity = TextEditingController();
    email = TextEditingController();
    phoneNumber = TextEditingController();
    country = TextEditingController();
    city = TextEditingController();
    primcelebCategory = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

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
                    backButton(context: context, svg: backIcon),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(signUp),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create an Account",
                        style: CustomTheme.mediumText(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5.0.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.0.w),
                        child: Text(
                          "And access the richest collection of celebrities and amaze-ing people",
                          style: CustomTheme.smallText(context),
                          textAlign: TextAlign.center,
                        ),
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
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        SizedBox(
                          width: 30.0.w,
                        ),
                        Expanded(
                          child: BorderTextFieldWidget(
                            text: "Last name",
                            keyboardType: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                      text: "Celebrity AKA",
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                      text: "Email Address",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomDropDownWidget(
                            item: telList,
                            hint: "Tel",
                            suffixIcon: dropDownIcon),
                        SizedBox(
                          width: 30.0.w,
                        ),
                        Expanded(
                          child: BorderTextFieldWidget(
                            text: "Phone number",
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                      text: "Country of residence",
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                      text: "City",
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                      text: "Primary Celebrity Category",
                      keyboardType: TextInputType.name,
                      suffixIconWidget: Container(
                        width: 5.0,
                        padding: EdgeInsetsDirectional.only(end: 1.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            onTap: () {
                              primaryCelebBottomSheet(
                                  context: context, size: size);
                            },
                            child: Center(
                              child: SvgPicture.asset(
                                addIcon,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    BorderTextFieldWidget(
                        onChanged: (value) {
                          setState(() {
                            capitalLetter = regExCapitalLetter.hasMatch(value);
                            smallLetter = regExSmallLetter.hasMatch(value);
                            specialCharcaters = regSpecialChar.hasMatch(value);
                          });
                        },
                        text: "Password",
                        keyboardType: TextInputType.visiblePassword),
                    SizedBox(
                      height: 16.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: AnimatedContainer(
                              //width: 93.0.w,
                              //height: 25.0.h,
                              decoration: BoxDecoration(
                                color: capitalLetter == true
                                    ? greenColor.withOpacity(0.05)
                                    : whiteColorShade2,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              duration: Duration(
                                seconds: 1,
                              ),
                              curve: Curves.easeIn,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: capitalLetter == true
                                          ? greenColor
                                          : textColor,
                                    ),
                                    SizedBox(
                                      width: 1.0.w,
                                    ),
                                    Text(
                                      "Capital letters",
                                      style: CustomTheme.smallestText(context)
                                          .copyWith(
                                        fontSize: 9.0.sp,
                                        color: capitalLetter == true
                                            ? greenColor
                                            : textColor,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Expanded(
                          child: AnimatedContainer(
                              //width: 93.0.w,
                              //height: 25.0.h,
                              decoration: BoxDecoration(
                                color: smallLetter == true
                                    ? greenColor.withOpacity(0.05)
                                    : whiteColorShade2,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              duration: Duration(
                                seconds: 1,
                              ),
                              curve: Curves.easeIn,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: smallLetter == true
                                          ? greenColor
                                          : blackColor,
                                    ),
                                    SizedBox(
                                      width: 1.0.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Lowercase letters",
                                        style: CustomTheme.smallestText(context)
                                            .copyWith(
                                          fontSize: 9.0.sp,
                                          color: smallLetter == true
                                              ? greenColor
                                              : blackColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Expanded(
                          child: AnimatedContainer(
                            //width: 93.0.w,
                            //height: 25.0.h,
                            decoration: BoxDecoration(
                              color: specialCharcaters == true
                                  ? greenColor.withOpacity(0.05)
                                  : whiteColorShade2,
                              borderRadius: BorderRadius.circular(5.0),
                            ),

                            duration: Duration(
                              seconds: 1,
                            ),
                            curve: Curves.easeIn,

                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 15,
                                    color: specialCharcaters == true
                                        ? greenColor
                                        : blackColor,
                                  ),
                                  SizedBox(
                                    width: 1.0.w,
                                  ),
                                  Text(
                                    "Special Characters",
                                    style: CustomTheme.smallestText(context)
                                        .copyWith(
                                      fontSize: 9.0.sp,
                                      color: specialCharcaters == true
                                          ? greenColor
                                          : blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "By creating an account you agree to Amaze's",
                            style: CustomTheme.smallestText(context).copyWith(
                              //fontSize: 9.0.sp,
                              color: blackColor,
                            ),
                            children: [
                              TextSpan(
                                text: "\nTerms of Service and Privacy Policy",
                                style:
                                    CustomTheme.smallestText(context).copyWith(
                                  //fontSize: 9.0.sp,
                                  color: primaryColorShade2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        return CustomIconButton(
                          title: "Continue",
                          icon: emailIcon,
                          onPressed: () {
                            //ref.read(signUpProvider).
                            ref.read(signUpProvider.notifier).signUp(
                                "firstName",
                                "lastName",
                                "email@y.com",
                                "+2349075545403",
                                "companyName",
                                0,
                                "celebrityAKA",
                                "jobTitle",
                                "userType",
                                "location",
                                "password",
                                "firebaseToken",
                                context);
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 30.0.h,
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

Widget backButton({required BuildContext context, String? svg}) {
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
        child: SvgPicture.asset(
          svg!,
          fit: BoxFit.scaleDown,
        ),
      ),
    ),
  );
}
