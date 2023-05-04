import "dart:async";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:saytu_jigueen_ni/utils/global.color.dart";
import "package:saytu_jigueen_ni/view/login.view.dart";

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:1), (){
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors().mainColor,
      body: Center(child: Text('SayTu Jiguéén Ni', style: TextStyle(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.bold
      ))),
    );
  }
}
