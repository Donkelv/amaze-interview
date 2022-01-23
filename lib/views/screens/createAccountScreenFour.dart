import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/borderTextFieldWidget.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'createAccountScreenOne.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CreateAccountScreenFour extends StatelessWidget {
  const CreateAccountScreenFour({ Key? key }) : super(key: key);

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
              iconContainer(svg: notesIcon),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Cha-Ching Ademola 💵️,",
                style: CustomTheme.mediumText(context),
              ),
              Text(
                "Time to put a price on it",
                style: CustomTheme.mediumText(context),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                "Please set a price you’d like your fans to pay for your service",
                style: CustomTheme.normalText(context)
                    .copyWith(color: primaryColor, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 35.0.h,
              ),
              Container(
                width: 150.w,
                height: 38.h,
                decoration: BoxDecoration(
                  color: primaryColorShade2,
                  borderRadius: BorderRadius.circular(10.0),
        
                ),
                child: Center(
                  child: Text("Video Shout-out - Fans", style: CustomTheme.smallText(context).copyWith(color: whiteColor,),),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              BorderTextFieldWidget(
                 keyboardType: TextInputType.number,
                 hintText: "Enter preferred amount",
                 prefixIcon: nairaIcon,
                 ),
                 SizedBox(
                   height: 10.0.h,
                 
                 ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color:  textColor2.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5.0),
                  
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(infoIcon, fit: BoxFit.scaleDown,),
                      SizedBox(
                        width: 12.0.w,
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                           text: "We recommend a minimum price of",
                           style: CustomTheme.smallText(context).copyWith( fontWeight: FontWeight.w300),
                           children: [
                              TextSpan(
                                text: " ₦100,000",
                                style: CustomTheme.smallText(context).copyWith(color: greenColor, fontWeight: FontWeight.w300),
                              ),
                              TextSpan(
                                text: " and\nmaximum price of",
                                style: CustomTheme.smallText(context).copyWith(fontWeight: FontWeight.w300),
                              ),
                             
                              TextSpan(
                                text: " ₦100,000",
                                style: CustomTheme.smallText(context).copyWith(color: greenColor, fontWeight: FontWeight.w300),
                              ),
                             TextSpan(
                                text: " for video shoutout - fans",
                                style: CustomTheme.smallText(context).copyWith(fontWeight: FontWeight.w300),
                              
                             ),
                            
                           ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100.0.h,
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return CustomButton(
                    color: primaryColor,
                    text: "Save and continue",
                    onPressed: () {
                      ref.watch(createAccountController).nextPage(
                            duration: Duration(milliseconds: 150),
                            curve: Curves.easeIn,
                          );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


 