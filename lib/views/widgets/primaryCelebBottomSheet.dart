import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/screens/signUpScreen.dart';
import 'package:amaze/views/widgets/categoryGridview.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:amaze/views/widgets/customIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void primaryCelebBottomSheet(
    {required BuildContext context, required Size? size}) {
  showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: 600.0.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: backButton(context: context, svg: cancelIcon)),
              ),
              Image.asset(primaryCategory),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Primary Celebrity Category",
                textAlign: TextAlign.center,
                style: CustomTheme.normalText(context).copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please select a primary celebrity category that\ndefines your offering",
                textAlign: TextAlign.center,
                style: CustomTheme.smallText(context).copyWith(
                  color: textColor2,
                ),
              ),
              SizedBox(
                height: 31.0.h,
              ),
              CategoryGridViewBuilder(),
              SizedBox(
                height: 30.0.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                child: CustomButton(
                  text: "Select Category",
                  onPressed: () {},
                  color: primaryColorShade2,
                ),
              )
            ],
          ),
        );
      });
}
