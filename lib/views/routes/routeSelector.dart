import 'package:amaze/constants/stringConst.dart';
import 'package:amaze/utils/theme.dart';
import 'package:amaze/views/routes/routeGenerator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class RouteSelector extends StatelessWidget {
  const RouteSelector({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(375, 811),
      builder: () {
        return MaterialApp(
          title: appName!,
          color: Colors.white,
          theme: CustomTheme.getTheme(),
          initialRoute: RouteGenerator.welcome, /// changed the rout to test out my screens
          onGenerateRoute: RouteGenerator.generateRoute,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}