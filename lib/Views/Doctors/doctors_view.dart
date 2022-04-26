import 'package:alice_care_admin/Models/doctors_model.dart';
import 'package:alice_care_admin/Services/services.dart';
import 'package:alice_care_admin/Utils/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class DoctorsView extends StatefulWidget {
  const DoctorsView({Key? key}) : super(key: key);

  @override
  State<DoctorsView> createState() => _DoctorsViewState();
}

class _DoctorsViewState extends State<DoctorsView> {
  // Future<List>? getRegisteredDoctors;
  // List? dataItems;

  List<DoctorsApi> _doctorList = <DoctorsApi>[];
  List<DoctorsApi> _doctorListToDisplay = <DoctorsApi>[];
  final Logger _logger = Logger();
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDoctors().then((value) {
      setState(() {
        _doctorList.addAll(value);
        _doctorListToDisplay = _doctorList;
        _logger.d(_doctorListToDisplay);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
            headingRowHeight: 30,
            horizontalMargin: 20,
            headingRowColor:
                MaterialStateProperty.all(ColorTheme.tableHeaderColor),
            columns: [
              // DataColumn(label: Text("ID")),
              DataColumn(
                label: const Text('ID'),
                onSort: (columnIndex, _) {
                  setState(() {
                    _currentSortColumn = columnIndex;
                    if (_isSortAsc) {
                      _doctorListToDisplay
                          .sort((a, b) => b.doctorsId!.compareTo(a.doctorsId!));
                    } else {
                      _doctorListToDisplay
                          .sort((a, b) => a.doctorsId!.compareTo(b.doctorsId!));
                    }
                    _isSortAsc = !_isSortAsc;
                  });
                },
              ),

              DataColumn(label: Expanded(child: Text("Doctor Name"))),
              DataColumn(label: Text("Doctor Speciality")),
              DataColumn(label: Text("Doctor Contact")),
              DataColumn(label: Text("Doctor Image")),
            ],
            rows: _doctorListToDisplay
                .map(
                  (e) => DataRow(
                    cells: [
                      DataCell(
                        Text(
                          "#00${e.doctorsId.toString()}",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          e.doctorName.toString(),
                          style: TextStyle(
                              // fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                      DataCell(
                        Text(
                          e.specialility.toString(),
                          style: TextStyle(
                              // fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                      DataCell(
                        Text(
                          e.phone.toString(),
                          style: TextStyle(),
                        ),
                      ),
                      DataCell(CircleAvatar(
                        backgroundImage:
                            NetworkImage(e.profileImage.toString()),
                      )),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
