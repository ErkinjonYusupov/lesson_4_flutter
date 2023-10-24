import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_4/components/base/Button.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Biz haqimizda"),
      
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Biz haqimizda sahifasi"),
            SizedBox(
              width: 200,
              child: Button(text: "Orqaga", color: Colors.red, click: (){
                Get.back();
              },))
          ],
        ),
      ),
    );
  }
}