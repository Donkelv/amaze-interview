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

  const BorderTextFieldWidget({Key? key, required this.text, this.controller, required this.keyboardType, this.prefixIcon, this.suffixIcon, this.onPressed, this.onChanged})
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
        label: Text(text!),
        //labelStyle: CustomTheme.normalText(context).copyWith(color: whiteColorShade2),
        focusColor: primaryColorShade2,
        suffixIcon: suffixIcon == null ? 
        null : 
        Container(
          width: 5.0,
          padding: EdgeInsetsDirectional.only(end: 1.0),
      decoration: BoxDecoration(
        color: Colors.transparent ,
        shape: BoxShape.circle,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: SvgPicture.asset(
              suffixIcon!,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    ),
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