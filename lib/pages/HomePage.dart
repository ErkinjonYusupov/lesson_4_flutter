import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_4/components/base/Button.dart';
import 'package:lesson_4/pages/AbautPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bosh sahifa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                child: Button(
                  text: "Biz haqimizda",
                  color: Colors.green,
                  click: () {
                    Get.to(() =>const AboutPage());
                  },
                )),
            SizedBox(
                width: 200,
                child: Button(
                  text: "Habar",
                  color: Colors.red,
                  click: () {
                   Get.snackbar("Error", "Ismingiznini to'liq kiriting");
                  },
                )),
          ],
        ),
      ),
    );
  }
}
