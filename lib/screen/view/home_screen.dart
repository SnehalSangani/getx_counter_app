import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/screen/controller/home_controller.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text("Counter app"),
          centerTitle: true,
        ),
        body: Center(
                child: Obx(() =>  Text("${homecontroller.i}",style: TextStyle(fontSize: 25),)),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: () {
                  homecontroller.i++;

                },child: Icon(Icons.add),),
                FloatingActionButton(onPressed: () {
                  homecontroller.i--;

                },child: Text("-",style: TextStyle(fontSize: 30),),),
                FloatingActionButton(onPressed: () {
                  homecontroller.i.value=(homecontroller.i*2).toInt();

                },child: Text("2x"),),
                FloatingActionButton(onPressed: () {
                  homecontroller.i.value=(homecontroller.i*3).toInt();

                },child: Text("3x"),),
                FloatingActionButton(onPressed: () {
                  homecontroller.i.value=(homecontroller.i*4).toInt();

                },child: Text("4x"),),
              ],
            ),





    ),
    );
  }
}
