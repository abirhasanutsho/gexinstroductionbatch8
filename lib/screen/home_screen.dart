import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';

class HomeScreen extends GetView<AppController>{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() {
                return Center(
                  child: Text(
                    "${controller.incremtnValue.value}",
                    style: const TextStyle(fontSize: 50, color: Colors.black),
                  ),
                );
              }),
              SizedBox(width: 20,),

            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.incrementMethod();
                  },
                  child: Text("Add")),
              SizedBox(width: 30,),
              ElevatedButton(
                  onPressed: () {
                    controller.decrementMethod();
                  },
                  child: Text("Minus")),
            ],
          )
        ],
      ),
    );
  }
}
