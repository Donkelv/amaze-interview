import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropDownWidget extends StatelessWidget {
  final Function(String?)? onChanged;
  final String? currentlySelected;
  final List<String>? bank;

  CustomDropDownWidget(
      {Key? key, required this.onChanged, required this.currentlySelected, required this.bank})
      : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      value: currentlySelected,
      icon: SvgPicture.asset(
        dropDownIcon,
        fit: BoxFit.scaleDown,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: SvgPicture.asset(suffixIcon!,),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0.w),
        hintText: "Please select a bank",
        focusColor: primaryColorShade2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: whiteColorShade2,
            width: 1,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: primaryColorShade2,
            width: 1,
          ),
        ),
        //hintStyle: CustomTheme.normalText(context).copyWith()
      ),
      onChanged: onChanged,
      items: bank!.map((e) {
        return DropdownMenuItem<String?>(
          value: e,
          child: Text(
            e,
            style: CustomTheme.normalText(context),
          ),
        );
      }).toList(),
    );
  }
}
