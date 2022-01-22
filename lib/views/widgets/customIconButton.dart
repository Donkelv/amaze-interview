import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String? title;
  final String? icon;
  final VoidCallback? onPressed;
  const CustomIconButton({Key? key, this.title, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          color: primaryColor,
          width: 1.5,
        )
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(60),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                      ),
                     // width: size.width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(icon!, fit: BoxFit.scaleDown,),
                      ),
                    ),
                  ),
                
                  Expanded(
                    child: Text(title!,
                    textAlign: TextAlign.center,
                     style: CustomTheme.normalText(context).copyWith(color: whiteColor,),),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    color: Colors.transparent,
                  )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
