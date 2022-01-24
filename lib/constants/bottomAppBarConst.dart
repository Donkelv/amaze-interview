import 'package:amaze/constants/imageConst.dart';
import 'package:amaze/views/screens/homeScreen.dart';
import 'package:flutter/material.dart';

List<Widget>? bottomAppScreens = [
  HomeScreen(),
  Center(
    child: Text("Request"),
  ),
  Center(
    child: Text("Notification"),
  ),
  Center(
    child: Text("Profile"),
  ),
];

class BottomBarAsset{
  final String? text;
  final String? svg;

  BottomBarAsset({
    this.text,
    this.svg,
  });
}


List<BottomBarAsset>? bottomBarAssets = [
  BottomBarAsset(
    text: "Home",
    svg: homeIcon,
  ),
  BottomBarAsset(
    text: "Request",
    svg: request,
  ),
  BottomBarAsset(
    text: "Notification",
    svg: notification,
  ),
  BottomBarAsset(
    text: "Profile",
    svg: profile,
  ),
];
