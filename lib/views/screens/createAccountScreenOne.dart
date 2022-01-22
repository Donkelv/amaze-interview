import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/core/controller/createAccountController.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/widgets/categoryGridview.dart';
import 'package:amaze/views/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateAccountScreenOne extends StatelessWidget {
  const CreateAccountScreenOne({Key? key}) : super(key: key);

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
            iconContainer(svg: badgeIcon),
            SizedBox(
              height: 15.0.h,
            ),
            Text(
              "Perfect Ademola 😎️,",
              style: CustomTheme.mediumText(context),
            ),
            Text(
              "Getting closer to meeting your fans",
              style: CustomTheme.mediumText(context),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Text(
              "Please select a maximum of 5 secondary celebrity category that your fans can use to identify you",
              style: CustomTheme.normalText(context)
                  .copyWith(color: primaryColor, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 35.0.h,
            ),
            CategoryGridViewBuilder(),
            SizedBox(
              height: 50.0.h,
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

Widget iconContainer({required String? svg}) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: whiteColorShade1,
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SvgPicture.asset(
        svg!,
        fit: BoxFit.scaleDown,
      ),
    ),
  );
}
