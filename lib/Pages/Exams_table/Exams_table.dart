import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/pages/Exams_table/Exams_table_class.dart';
import 'package:graduation_project/pages/affairs_main_page/side_menue.dart';
import 'package:graduation_project/responsive.dart';

class ExamsTablePage extends StatelessWidget {
  PageController page = PageController();
  late final String title;

  ExamsTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'Exams Table',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: const Color(0xFF3E6BA9),
                child: const Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: const ExamsScheduleScreen(),
            appBar: AppBar(
              backgroundColor: const Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("شئون الطلاب"),
                ],
              ),
            ),
            drawer: const Drawer(
              child: Sidemenu(),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'Exams Table',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: const Color(0xFF3E6BA9),
                child: const Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: Row(
              children: const [
                Flexible(
                  flex: 2,
                  child: Sidemenu(),
                ),
                Flexible(
                  flex: 6,
                  child: ExamsScheduleScreen(),
                ),
              ],
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("شئون الطلاب"),
                ],
              ),
            ),
          ),
        ),
        tablet: MaterialApp(
          title: 'Exams Table',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: const Color(0xFF3E6BA9),
                child: const Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: Row(
              children: const [
                Flexible(
                  flex: 2,
                  child: Sidemenu(),
                ),
                Flexible(
                  flex: 6,
                  child: ExamsScheduleScreen(),
                )
              ],
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("شئون الطلاب"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(const Offset(200, 200), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
