import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/constant.dart';
import 'package:btxproject2/pages/home_lecturers/doctor/attendance/qr.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    final TextEditingController date0 = TextEditingController();
    Size size = MediaQuery.of(context).size;

    // List of items in our dropdown menu

    // String? Team = Lecturers.Team;
    // List<String> Teams = Lecturers.Teams;
    // String? Subject = Lecturers.Subject;
    // List<String> Subjects = Lecturers.Subjects;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LecturersProvider(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "الفرقة",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width < 500 ? 20 : 30,
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                  width: size.width < 500 ? 200 : 300,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black87, width: 3),
                                  ),
                                  child: Center(child: Expanded(child: Expanded(
                                    child: Center(
                                      child: Consumer<LecturersProvider>(
                                          builder: (context, model, child) {
                                        return DropdownButtonHideUnderline(
                                          child: DropdownButton2<String>(
                                            // CANT SET THE DEFAULT VALUE**
                                            isExpanded: true,

                                            hint: Center(
                                                child: Text(
                                              "حدد الفرقة",
                                              style: TextStyle(
                                                fontSize:
                                                    size.width < 500 ? 10 : 15,
                                              ),
                                            )),
                                            onChanged: (String? newValue) {
                                              model.setSelectedTeam(newValue);
                                            },
                                            alignment:
                                                AlignmentDirectional.center,
                                            dropdownStyleData:
                                                DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25))),
                                            value: model.selectedTeam,

                                            items:
                                                model.team.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Center(
                                                      child: Text(
                                                    items,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black87),
                                                  )));
                                            }).toList(),
                                          ),
                                        );
                                      }),
                                    ),
                                  ))))
                            ],
                          ),
                          Consumer<LecturersProvider>(
                            builder: (context, value, child) {
                              return value.findselectedTeam ||
                                      value.findselectedsubjectTeam ||
                                      value.findselectedDateTeam ||
                                      value.findselectedsubjectTeamDate
                                  ? Text(
                                      "Please Enter Team",
                                      style: TextStyle(color: Colors.red[900]),
                                    )
                                  : const Text("");
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "الماده",
                                style: TextStyle(
                                  fontSize: size.width < 500 ? 20 : 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black87, width: 3),
                                ),
                                width: size.width < 500 ? 200 : 300,
                                child: Center(child: Expanded(child: Expanded(
                                    child: Center(child:
                                        Consumer<LecturersProvider>(
                                            builder: (context, model, child) {
                                  return DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      // CANT SET THE DEFAULT VALUE**
                                      isExpanded: true,

                                      hint: Center(
                                          child: Text(
                                        "حدد المادة",
                                        style: TextStyle(
                                          fontSize: size.width < 500 ? 10 : 15,
                                        ),
                                      )),
                                      onChanged: (String? newValue) {
                                        model.setSelectedSubject(newValue!);
                                      },
                                      alignment: AlignmentDirectional.center,
                                      dropdownStyleData: DropdownStyleData(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25))),
                                      value: model.selectedSubject,

                                      items: model.subject.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Center(
                                                child: Text(
                                              items,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            )));
                                      }).toList(),
                                    ),
                                  );
                                }))))),
                              )
                            ],
                          ),
                          Consumer<LecturersProvider>(
                            builder: (context, value, child) {
                              return value.findselectedsubject ||
                                      value.findselectedsubjectDate ||
                                      value.findselectedsubjectTeam ||
                                      value.findselectedsubjectTeamDate
                                  ? Text(
                                      "Please Enter Subject",
                                      style: TextStyle(color: Colors.red[900]),
                                    )
                                  : const Text("");
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "التاريخ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width < 500 ? 20 : 30,
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Consumer<LecturersProvider>(
                                builder: (context, value, child) {
                                  return SizedBox(
                                    width: size.width < 500 ? 200 : 300,
                                    child: TextField(
                                      controller: date0,
                                      // ignore: prefer_const_constructors
                                      decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          // ignore: prefer_const_constructors
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.black87,
                                                  width: 3)),
                                          icon: const Icon(
                                              Icons.calendar_today_rounded),
                                          labelText: "Select Date"),
                                      onTap: () async {
                                        value.date = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2101));
                                        if (value.date != null) {
                                          date0.text = DateFormat('yyyy-MM-dd')
                                              .format(value.date!);
                                          value.setSelectedDate(
                                              value.date.toString());
                                        }
                                      },
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                          Consumer<LecturersProvider>(
                            builder: (context, value, child) {
                              return value.findselectedDate ||
                                      value.findselectedDateTeam ||
                                      value.findselectedsubjectDate ||
                                      value.findselectedsubjectTeamDate
                                  ? Text(
                                      "Please Enter Date",
                                      style: TextStyle(color: Colors.red[900]),
                                    )
                                  : const Text("");
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Consumer<LecturersProvider>(
                            builder: (context, model, child) {
                              return model.selectedSubject == null
                                  ? Text("تسجيل حضور الطلبه لماده  ....",
                                      style: TextStyle(
                                        color: color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width < 500 ? 15 : 20,
                                      ))
                                  : Text(
                                      "تسجيل حضور الطلبه  ${model.selectedSubjects} ",
                                      style: TextStyle(
                                        color: color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width < 500 ? 15 : 20,
                                      ),
                                    );
                            },
                          ),
                          Consumer<LecturersProvider>(
                            builder: (context, model, child) {
                              return model.selectedTeam == null
                                  ? Text("الفرقة ....",
                                      style: TextStyle(
                                        color: color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width < 500 ? 15 : 20,
                                      ))
                                  : Text(
                                      "الفرقه ${model.selectedTeams} ",
                                      style: TextStyle(
                                        color: color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width < 500 ? 15 : 20,
                                      ),
                                    );
                            },
                          ),
                          Consumer<LecturersProvider>(
                            builder: (context, model, child) {
                              return model.ddate == null
                                  ? Text("بتاريخ ....",
                                      style: TextStyle(
                                        color: color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width < 500 ? 15 : 20,
                                      ))
                                  : Text(
                                      "بتاريخ ${model.date} ",
                                      style: TextStyle(
                                        color: color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width < 500 ? 15 : 20,
                                      ),
                                    );
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 150,
                            child: Consumer<LecturersProvider>(
                                builder: (context, value, child) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25), // <-- Radius
                                    ),
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(
                                        color: Colors.black87, width: 3),
                                    textStyle: const TextStyle(
                                        fontSize: 25,
                                        fontStyle: FontStyle.normal)),
                                onPressed: () {
                                  value.selectedTeams != null
                                      ? value.changeTextErorTeam()
                                      : null;
                                  value.selectedSubjects != null
                                      ? value.changeTextErorSubject()
                                      : null;
                                  value.ddate != null
                                      ? value.changeTextErorDate()
                                      : null;
                                  if (value.selectedTeams == null &&
                                      value.date == null &&
                                      value.selectedSubjects == null) {
                                    value.findSelectedSubjectTeamDate();
                                  } else if (value.selectedSubjects == null &&
                                      value.selectedTeams == null) {
                                    value.findSelectedSubjectTeam();
                                  } else if (value.selectedTeams == null &&
                                      value.date == null) {
                                    value.findSelectedTeamDate();
                                  } else if (value.selectedSubjects == null &&
                                      value.date == null) {
                                    value.findSelectedSubjectDate();
                                  } else if (value.selectedSubjects == null) {
                                    value.findSelectedSubject();
                                  } else if (value.selectedTeams == null) {
                                    value.findSelectedTeam();
                                  } else if (value.date == null) {
                                    value.findSelectedDate();
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const QR()));
                                  }
                                },

                                // ignore: prefer_const_constructors
                                child: Center(
                                  widthFactor: 100,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          "عرض",
                                          style: TextStyle(
                                              fontSize:
                                                  size.width < 500 ? 15 : 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          "QR Code",
                                          style: TextStyle(
                                              fontSize:
                                                  size.width < 500 ? 15 : 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
