import 'package:btxproject2/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/educationData/educationData.dart';
import 'package:btxproject2/essensialData/essentialData.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen_essentialData extends StatefulWidget {
  @override
  State<MainScreen_essentialData> createState() =>
      _MainScreen_essentialDataState();
}

class _MainScreen_essentialDataState extends State<MainScreen_essentialData> {
  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    bool test2;
    _size.width <= 364 ? test2 = true : test2 = false;

    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              Image.asset("assets/img/image1.png"),
              const SizedBox(
                width: 1,
              ),
              Text(
                "شئون الطلاب",
                style: TextStyle(fontSize: _size.width <= 364 ? 17 : 20),
              ),
            ],
          ),
          backgroundColor: color1),
      body: Responsive(
        // Let's work on our mobile part
        mobile: Row(children: [
          if (_size.height < 500) Expanded(flex: 2, child: sidemenu()),
          Expanded(flex: 5, child: essentialData())
        ]),
        tablet: Row(
          children: [
            if (_size.height > 500 || _size.width < 100)
              Expanded(flex: 2, child: sidemenu()),
            Expanded(
              flex: 5,
              child: essentialData(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: sidemenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 5 : 7,
              child: essentialData(),
            ),
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
