import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Days extends StatelessWidget {
  const Days({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    Size size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Tables(),
        )
      ],
      child: Scaffold(
        body: Consumer<Tables>(builder: (context, model, child) {
          return Container(
            decoration:
                BoxDecoration(border: Border.all(width: 3, color: color1)),
            child: RotatedBox(
              quarterTurns: size.width < 700 ? 1 : 0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 2,
                            child: Center(child: Text("اليوم/الفترة")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("8-9")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("9-10")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("10-11")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("11-12")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("12-1")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("1-2")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("2-3")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("3-4")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("4-5")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(child: Text("5-6")),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          mainAxisExtent: (490 - 43) / 6,
                          crossAxisCount: 1,
                        ),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: index == 0
                                          ? const Text("السبت")
                                          : index == 1
                                              ? const Text("الاحد")
                                              : index == 2
                                                  ? const Text("الاثنين")
                                                  : index == 3
                                                      ? const Text("الثلاثاء")
                                                      : index == 4
                                                          ? const Text(
                                                              "الاربعاء")
                                                          : const Text(
                                                              "الخميس"))),
                              for (int i = 8;
                                  i < 18;
                                  model.licturebegin.contains(i)
                                      ? i = i +
                                          model.periodeLecture[
                                              model.licturebegin.indexOf(i)]
                                      : i++)
                                model.licturebegin.contains(i)
                                    ? Expanded(
                                        flex: model.periodeLecture[
                                            model.licturebegin.indexOf(i)],
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: model.type[model
                                                          .licturebegin
                                                          .indexOf(i)] ==
                                                      "محاضره"
                                                  ? Colors.amber
                                                  : Colors.amberAccent),
                                          child: model.periodeLecture[model
                                                      .licturebegin
                                                      .indexOf(i)] ==
                                                  1
                                              ? Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                      Center(
                                                        child: Text(
                                                          "المادة",
                                                          style: TextStyle(
                                                            fontSize: 8,
                                                          ),
                                                        ),
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          "القاعة-اسم الدكتور",
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      )
                                                    ])
                                              : Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                      Center(
                                                        child: Text(
                                                          "المادة",
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          "القاعة-اسم الدكتور",
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                      )
                                                    ]),
                                        ),
                                      )
                                    : Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.blueGrey),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                i == 9
                                                    ? const Center(
                                                        child: Text("     "))
                                                    : i == 10
                                                        ? const Center(
                                                            child:
                                                                Text("      "))
                                                        : const Center(
                                                            child:
                                                                Text("    ")),
                                              ]),
                                        ),
                                      )
                            ],
                          );
                        },
                      ),
                    )
                  ]),
            ),
          );
        }),
      ),
    );
  }
}
