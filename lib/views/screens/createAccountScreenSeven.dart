import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/routes/routeGenerator.dart';
import 'package:amaze/views/widgets/borderTextFieldWidget.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'createAccountScreenOne.dart';

class CreateAccountScreenSeven extends StatelessWidget {
  const CreateAccountScreenSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0.h,
              ),
              iconContainer(svg: ticketIcon),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Done Ademola ⛱️️,",
                style: CustomTheme.mediumText(context),
              ),
              Text(
                "Personal social accounts",
                style: CustomTheme.mediumText(context),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                "Please enter the url and/or identification for your social media accounts (optional)",
                style: CustomTheme.normalText(context).copyWith(
                    color: primaryColor, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 35.0.h,
              ),
              Text(
                "Website (Optional)",
                style: CustomTheme.smallestText(context)
                    .copyWith(color: textColor2, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              BorderTextFieldWidget(
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Instagram",
                style: CustomTheme.smallestText(context)
                    .copyWith(color: textColor2, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              BorderTextFieldWidget(
                keyboardType: TextInputType.name,
                prefixIcon: instagramIcon,
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Twitter",
                style: CustomTheme.smallestText(context)
                    .copyWith(color: textColor2, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              BorderTextFieldWidget(
                keyboardType: TextInputType.name,
                prefixIcon: twitterIcon,
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Facebook",
                style: CustomTheme.smallestText(context)
                    .copyWith(color: textColor2, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              BorderTextFieldWidget(
                keyboardType: TextInputType.name,
                prefixIcon: facebookIcon,
              ),
              SizedBox(
                height: 50.0.h,
              ),
              CustomButton(
                color: primaryColor,
                text: "Save and continue",
                onPressed: () {
                  Navigator.pushNamed(context, RouteGenerator.success);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
