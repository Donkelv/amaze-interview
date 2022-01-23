import 'package:amaze/constants/colorConst.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class BorderTextFieldWidget extends StatelessWidget {
  final String? text;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? prefixIcon;
  final String? suffixIcon;
  final VoidCallback? onPressed;
  final Function(String)? onChanged;
  final String? hintText;
  final Widget? suffixIconWidget;

  const BorderTextFieldWidget({Key? key,  this.text, this.controller, required this.keyboardType, this.prefixIcon, this.suffixIcon, this.onPressed, this.onChanged, this.hintText, this.suffixIconWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      //autofocus: true,
      cursorColor: primaryColorShade2,
      onChanged: onChanged == null ? null : (value) => onChanged!(value),
      decoration: InputDecoration(
        floatingLabelBehavior:FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 20.0.w),
        label: text == null ? null : Text(text!),
        //labelStyle: CustomTheme.normalText(context).copyWith(color: whiteColorShade2),
        focusColor: primaryColorShade2,
        hintText: hintText == null ? "" : hintText!,
        prefixIcon: prefixIcon == null ? null : SvgPicture.asset(prefixIcon!, fit: BoxFit.scaleDown,),
        suffixIcon: suffixIconWidget == null ? 
        null : 
        suffixIconWidget,
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
        
      ),
    );
  }
}