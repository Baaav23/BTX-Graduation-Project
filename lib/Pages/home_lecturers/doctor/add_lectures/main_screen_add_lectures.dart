import 'package:btxproject2/consatant/constant.dart';
import 'package:btxproject2/consatant/drawer/lecturers_drawer.dart';
import 'package:btxproject2/consatant/responsive.dart';
import 'package:btxproject2/pages/home_lecturers/doctor/add_lectures/add_lectures.dart';
import 'package:flutter/material.dart';

class MainScreenAddLecturers extends StatelessWidget {
  const MainScreenAddLecturers({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Responsive.isMobile(context) || size.height < 500
          ? const Padding(
              padding: EdgeInsets.all(0),
              child: Drawer(
                child: DrawerLecturers(),
              ),
            )
          : null,
      appBar: AppBar(
          actions: [
            Image.asset("assets/img/image1.png"),
            const SizedBox(
              width: 1,
            ),
          ],
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Text(
                  "المحاضرون",
                  style: TextStyle(
                    fontSize: size.width <= 364 ? 17 : 20,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: color1),
      body: Responsive(
        // Let's work on our mobile part
        mobile: const AddLectures(),
        tablet: Row(
          children: [
            if (size.height > 500 || size.width < 100)
              const Expanded(flex: 2, child: DrawerLecturers()),
            const Expanded(
              flex: 5,
              child: AddLectures(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: const DrawerLecturers(),
            ),
            Expanded(
              flex: size.width > 1340 ? 5 : 7,
              child: const AddLectures(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        Container(
          height: 35,
          color: color1,
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: size.width <= 380 ? 10 : 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
    );
  }
}
