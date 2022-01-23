import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'createAccountScreenOne.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateAccountScreenThree extends StatefulWidget {
  const CreateAccountScreenThree({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreenThree> createState() => _CreateAccountScreenThreeState();
}

class _CreateAccountScreenThreeState extends State<CreateAccountScreenThree> {

  FToast? fToast;


  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast!.init(context);
  }
  

  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0.h,
            ),
            iconContainer(svg: giftIcon),
            SizedBox(
              height: 15.0.h,
            ),
            Text(
              "Hooray Ademola 🎉️,",
              style: CustomTheme.mediumText(context),
            ),
            Text(
              "We are almost there!!",
              style: CustomTheme.mediumText(context),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Text(
              "Please select the service(s) you choose to offer on Amaze",
              style: CustomTheme.normalText(context)
                  .copyWith(color: primaryColor, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 57.0.h,
            ),
            customServiceWidget(
              onPressed: (){
                setState(() {
                  pressed = !pressed;
                
                });
              }, 
              size: size, 
              context: context,
              pressed: pressed,
            ),

             SizedBox(
                        height: 200.0.h
                      ),
                      Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return CustomButton(
                  color: primaryColor,
                  text: "Save and continue",
                  onPressed: () {
                    pressed ?
                    ref.watch(createAccountController).nextPage(
                          duration: Duration(milliseconds: 150),
                          curve: Curves.easeIn,
                        )
                        :
                       fToast!.showToast(
                      
        child: Container(
          color: blackColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Please select at least one service", style: CustomTheme.smallText(context).copyWith(color: whiteColor),),
          )),
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
       
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




Widget customServiceWidget({required VoidCallback? onPressed, required Size? size, required BuildContext context, required bool pressed}) {
  return AnimatedContainer(
    width: size!.width,
    //height: 100.0.h,
    decoration: BoxDecoration(
      color: pressed ? primaryColorShade3 : whiteColor,
      border: Border.all(
        color: pressed ? primaryColorShade2 : Color(0xFFE3E0E0),
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(10.0)
    ),
    curve: Curves.easeIn,
    duration: Duration(milliseconds: 150),
    child: Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Video ShoutOut - Fans", style: CustomTheme.normalText(context).copyWith(color: pressed ? textColor : textColor3, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.0.h,),
                    Text("Create personalised videos for your fans and leave them Amaze-d.", 
                    softWrap: true,
                    style: CustomTheme.smallText(context).copyWith(color: pressed ? textColor :  textColor3,),),
                  ],
                ),
              ),
              Container(
                width: 20.0.w,
                height: 20.0.h,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: pressed ? primaryColorShade2 : whiteColorShade2,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 10.0.w,
                    height: 10.0.h,
                    decoration: BoxDecoration(
                      color: pressed ? primaryColorShade2 : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    ),
                  ),
                ),
              
            ],
          ),
        ),
      ),
    ),
  );
}
