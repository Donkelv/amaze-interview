import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomBorderedButton extends StatelessWidget {
  final Color? color;
  final Color? borderColor;
  final String? text;
  final Color? textCol;
  const CustomBorderedButton(
      {Key? key, this.color, this.borderColor, this.text, this.textCol})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor!,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                text!,
                style: CustomTheme.normalText(context).copyWith(color: textCol),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
