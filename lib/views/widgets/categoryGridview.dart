import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/core/controller/celebNotifier.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryGridViewBuilder extends StatefulWidget {
  CategoryGridViewBuilder({Key? key}) : super(key: key);

  @override
  _CategoryGridViewBuilderState createState() =>
      _CategoryGridViewBuilderState();
}

class _CategoryGridViewBuilderState extends State<CategoryGridViewBuilder> {
  int? currentSelectedIndex;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.8,
            crossAxisSpacing: 10.0.w,
            mainAxisSpacing: 20.0.h),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return CustomCategoryWidget(
                index: index,
                onPressed: () {
                  setState(() {
                    currentSelectedIndex = index;
                  });
                  ref.watch(celebProvider.notifier).setCeleb("Category ${currentSelectedIndex! + 1}");
                },
                selected: currentSelectedIndex == index,
              );
            },
          );
        });
  }
}

class CustomCategoryWidget extends StatelessWidget {
  final bool? selected;
  final VoidCallback? onPressed;
  final int? index;
  const CustomCategoryWidget(
      {Key? key,
      required this.index,
      required this.onPressed,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 40.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
            color: selected! ? primaryColorShade2 : textColor2, width: 1.0),
        color:
            selected! ? primaryColorShade2.withOpacity(0.05) : whiteColorShade1,
      ),
      duration: Duration(milliseconds: 150),
      curve: Curves.easeIn,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          onTap: onPressed,
          child: Center(
            child: Text(
              "Category ${index! + 1}",
              style: CustomTheme.normalText(context).copyWith(
                color: selected! ? primaryColorShade2 : textColor2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
