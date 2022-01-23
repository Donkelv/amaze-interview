import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/constants/telConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropDownWidget extends StatefulWidget {
  final List<TelModel>? item;
  final String? hint;
  
  final String? suffixIcon;

  const CustomDropDownWidget(
      {Key? key,
      required this.item,
      required this.hint,
     
      required this.suffixIcon, })
      : super(key: key);

  @override
  _CustomDropDownWidgetState createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  List<TelModel>? item;
  TelModel? currentlySelected;
  String? hint;
 
  String? suffixIcon;

  @override
  void initState() {
    item = widget.item;
    hint = widget.hint;
    
    suffixIcon = widget.suffixIcon;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: 100.0.w,
      child: DropdownButtonFormField<TelModel?>(
        value: currentlySelected,
        icon: SvgPicture.asset(suffixIcon!, fit: BoxFit.scaleDown,),
        decoration: InputDecoration(
         
          floatingLabelBehavior:FloatingLabelBehavior.always,
          //suffixIcon: SvgPicture.asset(suffixIcon!,),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0.w),
          hintText: hint!,
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
        onChanged: (value) {
          setState(() {
            currentlySelected = value;
          });
        },
        items: item!.map((e) {
          return DropdownMenuItem<TelModel?>(
            value: e,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
            e.icon!,
          ),
          SizedBox(
            width: 5.0.w,
        
          ),
                Text(
                  e.tel!,
                  style: CustomTheme.normalText(context),
                ),
              ],
            ),
          );
        }).toList(),

      ),
    );
  }
}
