// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'dart:html';

import 'package:graduation_project/Pages/chat/constants/constants.dart';
import 'package:graduation_project/Pages/library/books_responsive.dart';
import 'package:graduation_project/provider/Affairs_side_Menue_provider.dart';

class affairs_body_class extends StatelessWidget {
  const affairs_body_class({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width >= 650;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "مرحبا بك",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Text(
                    "${Affairs_Side_Menue_provider().Student_Name}",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "البيانات الدراسية",
                  style: TextStyle(color: grey_text, fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'شئون الطلاب',
                  style: TextStyle(color: grey_text, fontSize: 19),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'رعاية الطلاب',
                  style: TextStyle(color: grey_text, fontSize: 19),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => books_responsive()),
                  );
                },
                child: Text(
                  'المكتبة',
                  style: TextStyle(color: grey_text, fontSize: 19),
                ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "شكاوي واقتراحات",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "مقابلة العميد",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                )),
            // Padding(
            //   padding: const EdgeInsets.only(left: 1000),
            //   child: SizedBox(
            //     height: 30,
            //     width: 2000,
            //     child: Padding(
            //       padding: const EdgeInsets.only(left: 150),
            //       child: Container(
            //         color: Color.fromARGB(255, 20, 30, 165),
            //         child: Text(
            //           "جميع الحقوق محفوظة لدي",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
