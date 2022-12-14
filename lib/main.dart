import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter getX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                /*
                * playing with snackbar in flutter
                */
                Get.snackbar(
                  "this is a snackbar",
                  "from getx",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                );
              },
              child: Text('Press for snackbar'),
            ),

            //this part is for dialog box in flutter using getX

            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Are you sure',
                    // content needs a widget we can use whatever we want
                    content: Text('you want to exit the app ?'),
                    backgroundColor: Colors.yellow,
                  );
                },
                child: Text('Press for DialogBox'))
          ],
        ),
      ),
    );
  }
}
