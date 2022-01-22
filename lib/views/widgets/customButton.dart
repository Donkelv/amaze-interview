import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onPressed;
  const CustomButton({Key? key, required this.color, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                text!,
                    textAlign: TextAlign.center,
                     style: CustomTheme.normalText(context).copyWith(color: whiteColor,),),
                  ),
            ),
          ),
        ),
    
    );
  }
}
