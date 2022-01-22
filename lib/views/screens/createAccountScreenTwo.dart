import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'createAccountScreenOne.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';



class CreateAccountScreenTwo extends StatelessWidget {
  const CreateAccountScreenTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 25.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0.h,
            ),
            iconContainer(svg: privacyIcon),
            SizedBox(
              height: 15.0.h,
            ),
            Text(
              "Smile Ademola 📸️,",
              style: CustomTheme.mediumText(context),
            ),
            Text(
              "It’s time to take a picture",
              style: CustomTheme.mediumText(context),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Text(
              "Please upload or take a picture for your fans to easily recognize and book an experience",
              style: CustomTheme.normalText(context)
                  .copyWith(color: primaryColor, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 57.0.h,
            ),
            Align(
              alignment: Alignment.center,
              child:  Container(
                height: 150.0.h,
                width: 150.0.w,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        width: 150.0.w,
                        height: 150.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColorShade1,
                        ),
                        child: Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(75.0.w),
                            onTap: () {
                              
                            },
                            child: Center(
                              child: SvgPicture.asset(personIcon, fit: BoxFit.scaleDown, color: Color(0xFFA5A3B2),),
                                                  
                            ),
                          ),
                        ),
                      ),),
                      Positioned(
                        bottom: 5.0.h,
                        right: 15.0.w,
                        child: cameraButtonIcon(
                          color: Color(0xFF1195FF), 
                        onPressed: (){}, 
                        svg: plusIcon,),
                      ),
                     
                      
                  ],
                ),
              ),
            ),
             SizedBox(
                        height: 150.0.h
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
    );
  }
}





Widget cameraButtonIcon(
    {required Color? color,
    required VoidCallback? onPressed,
    required String? svg}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      border: Border.all(color: whiteColor, width: 2.0),
    ),
    child: Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SvgPicture.asset(
              svg!,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    ),
  );
}