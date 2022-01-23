import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/utils/theme.dart';

import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'createAccountScreenOne.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class CreateAccountScreenSix extends StatelessWidget {
  const CreateAccountScreenSix({ Key? key }) : super(key: key);

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
              iconContainer(svg: documentIcon),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Finally Ademola 🤙️️,",
                style: CustomTheme.mediumText(context),
              ),
              Text(
                "Additional information required",
                style: CustomTheme.mediumText(context),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                "Please upload necessary additional information to avoid duplicacy of your identity",
                style: CustomTheme.normalText(context)
                    .copyWith(color: primaryColor, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 35.0.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Upload your documents",
                    style: CustomTheme.smallestText(context).copyWith(color: textColor2,),
                  ),
                  SizedBox(
                    width: 4.0.w,
                  ),
                  SvgPicture.asset(infoIcon, fit: BoxFit.scaleDown,),
                ],
              ),
              
              SizedBox(
                height: 5.0.h,
              ),
              Container(
                height: 50.0.h,
                width: size.width,
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: textColor2,
                    width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0.w),
                      child: Text(
                        "Upload your documents",
                        style: CustomTheme.smallText(context).copyWith(color: textColor2,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0.w),
                      child: Container(
                        height: 29.0.h,
                        width: 60.0.w,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5.0),
                            onTap: (){},
                            child: Center(
                              child: Text("Upload", style: CustomTheme.smallestText(context).copyWith(color: whiteColor),
                            ),
                            ),
                          ),
                        )
                    ),
                    ),
                  ],
                ),
                
              ),
              SizedBox(
                height: 230.0.h,
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
            ),

            ],
          ),
        ),
      ),
    );
  }
}