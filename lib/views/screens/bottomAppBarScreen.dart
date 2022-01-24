import 'package:amaze/constants/bottomAppBarConst.dart';
import 'package:amaze/constants/colorConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class BottomAppBarScreen extends StatefulWidget {
  const BottomAppBarScreen({ Key? key }) : super(key: key);

  @override
  _BottomAppBarScreenState createState() => _BottomAppBarScreenState();
}

class _BottomAppBarScreenState extends State<BottomAppBarScreen> {

  GlobalKey<ScaffoldState>? _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController? _pageController = PageController(initialPage: 0);
  int? _page = 0;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      backgroundColor: whiteColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _page = page;
          });
        },
        physics: NeverScrollableScrollPhysics(),
        children: bottomAppScreens!.toList(),
      ),
      bottomNavigationBar: Container(
        height: 79.0.h,
        width: size.width,
        //color: whiteColor,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFE5E5E5),
              offset: Offset(0, 0),
              blurRadius: 30.0,
            ),
          ],
        ),
        
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for(int i = 0; i < bottomBarAssets!.length; i++)
              Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  //splashColor: Color.fromRGBO(0, 0, 0, 0.5),
                      onTap: () {
                        setState(() {
                          _pageController!.jumpToPage(i);
                        });
                      },
                  child: i == _page 
                  ?
                  Container(
                              decoration: BoxDecoration(
                                //color: blackColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                                  crossAxisAlignment: CrossAxisAlignment.center,                                 
                                  children: [
                                    SvgPicture.asset(
                                      bottomBarAssets![i].svg!,
                                      color: primaryColorShade2,
                                      //fit: BoxFit.scaleDown,
                                    ),
                                    
                                    Text(bottomBarAssets![i].text!, style: CustomTheme.smallText(context).copyWith(color: primaryColorShade2),),
                                    SizedBox(
                                      height: 2.0.h,
                                    ),

                                  ],
                                ),
                              ),
                            )
                            :
                            Container(
                              decoration: BoxDecoration(
                                //color: blackColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                                  crossAxisAlignment: CrossAxisAlignment.center,                                 
                                  children: [
                                    SvgPicture.asset(
                                      bottomBarAssets![i].svg!,
                                      color: whiteColorShade2,
                                     // height: ,
                                      //fit: BoxFit.scaleDown,
                                    ),
                                    // SizedBox(
                                    //   height: 12.0.h,
                                    // ),
                                    Text(bottomBarAssets![i].text!, style: CustomTheme.smallText(context).copyWith(color: whiteColorShade2),),
                                    SizedBox(
                                      height: 2.0.h,
                                    ),

                                  ],
                                ),
                              ),
                            )
                ),
              )
            ],
          ),
        ),
        
      ),
    );
  }
}