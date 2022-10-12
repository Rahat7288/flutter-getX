import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Another extends StatelessWidget {
  const Another({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another page'),
      ),
      body: Center(
          child: Column(
            children: [

              Text(Get.arguments),
              ElevatedButton(
        onPressed: () {
              Get.back();
        },
        child: Text('go to home'),
      ),
            ],
          )),
    );
  }
}
