// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile/controller/displayAnswerController.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final displayAnswerController controller = Get.put(displayAnswerController());

  final inputSection = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Mobile Dev'),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 370,
              padding: EdgeInsets.only(left: 15.0),
              child: TextField(
                controller: inputSection,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Input N"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (inputSection.text.isNotEmpty) {
                          displayAnswerController.to.displayOne(int.parse(inputSection.text));
                        } else {
                          print("kosong");
                        }
                      },
                      child: Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Text("1", textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (inputSection.text.isNotEmpty) {
                          displayAnswerController.to.displayTwo(int.parse(inputSection.text));
                        } else {
                          print("kosong");
                        }
                      },
                      child: Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Text("2", textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (inputSection.text.isNotEmpty) {
                          displayAnswerController.to.displayThree(int.parse(inputSection.text));
                        } else {
                          print("kosong");
                        }
                      },
                      child: Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Text("3", textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (inputSection.text.isNotEmpty) {
                          displayAnswerController.to.displayFour(int.parse(inputSection.text));
                        } else {
                          print("kosong");
                        }
                      },
                      child: Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Text("4", textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Result :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            GetBuilder<displayAnswerController>(
                init: displayAnswerController(),
                builder: (counter) {
                  return Container(
                    width: 400,
                    height: 400,
                    padding: EdgeInsets.all(15.0),
                    child: GridView.builder(
                      itemCount: counter.answer.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 11,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Text(counter.answer[index].toString()),
                        );
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
