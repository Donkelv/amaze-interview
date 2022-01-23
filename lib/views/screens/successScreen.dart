import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: whiteColor,
      width: size.width,
      height: size.height,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 55.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(successIcon),
            SizedBox(
              height: 25.0.h,
            ),
            Text("Amaze-ing!!!", style: CustomTheme.mediumText(context),),
            SizedBox(
              height: 5.0.h,
            ),
            Text("Your application is undergoing review. You will receive a notification once the review is complete.", 
            textAlign: TextAlign.center,
            style: CustomTheme.normalText(context),),
            SizedBox(
              height: 15.0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: CustomButton(
                color: primaryColorShade2, 
                text: "Continue", 
                onPressed: (){

                },),
            )
          ],
        ),
      ),
    );
  }
}