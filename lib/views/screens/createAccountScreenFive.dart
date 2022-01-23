import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/borderTextFieldWidget.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:amaze/views/widgets/customDropdownWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'createAccountScreenOne.dart';



// ignore: must_be_immutable
class CreateAccountScreenFive extends StatefulWidget {
  CreateAccountScreenFive({ Key? key }) : super(key: key);

  @override
  State<CreateAccountScreenFive> createState() => _CreateAccountScreenFiveState();
}

class _CreateAccountScreenFiveState extends State<CreateAccountScreenFive> {
  String? currentlySelected;
  List<String>? bank = ['Bank 1', 'Bank 2', 'Bank 3'];

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
              iconContainer(svg: rocketIcon),
              SizedBox(
                height: 15.0.h,
              ),
              Text(
                "Almost Ademola ⚙️️,",
                style: CustomTheme.mediumText(context),
              ),
              Text(
                "Set up your withdrawal account",
                style: CustomTheme.mediumText(context),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                "Please set up your preferred withdrawal account and we’ll direct your funds to it",
                style: CustomTheme.normalText(context)
                    .copyWith(color: primaryColor, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 35.0.h,
              ),
              CustomDropDownWidget(
                bank: bank,
                currentlySelected: currentlySelected,
                onChanged: (value){
                  setState(() {
                    currentlySelected = value;
                  });
                },
              ),
              SizedBox(
                height: 30.0.h,
              ),
              BorderTextFieldWidget(
                 keyboardType: TextInputType.number,
                 hintText: "Enter account number",
                
                 ),
                 SizedBox(
                   height: 170.0.h,
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