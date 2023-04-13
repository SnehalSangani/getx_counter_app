import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/screen/controller/home_controller.dart';
import 'package:getx_counter_app/screen/view/home_screen.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => home(),
      },
    )

  );
}