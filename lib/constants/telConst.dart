import 'package:amaze/constants/imageConst.dart';

class TelModel {
  final String? tel;
  final String? icon;

  TelModel({this.tel, this.icon});
}

List<TelModel>? telList = [
  TelModel(
    tel: "+234",
    icon: nigeriaIcon,
  ),
  TelModel(
    tel: "+1",
    icon: nigeriaIcon,
  ),
  TelModel(
    tel: "+44",
    icon: nigeriaIcon,
  ),
];
