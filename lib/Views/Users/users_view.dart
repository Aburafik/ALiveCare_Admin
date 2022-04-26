import 'package:alice_care_admin/Utils/color_theme.dart';
import 'package:flutter/material.dart';

class UsersView extends StatelessWidget {
  const UsersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
         Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
              headingRowHeight: 30,
              headingRowColor:
                  MaterialStateProperty.all(ColorTheme.tableHeaderColor),
              columns: [
                DataColumn(label: Text("Index")),
                DataColumn(label: Text("User Profile")),
                DataColumn(label: Text("User Name")),
                DataColumn(label: Text("User Email")),
                DataColumn(label: Text("User Phone")),
                DataColumn(label: Text("Address")),
                DataColumn(label: Text("Date Created")),
                DataColumn(label: Text("Status")),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("1")),
                  
                  DataCell(CircleAvatar()),
                  DataCell(Text("John Doabsfdsfgdgkjgkjde")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                ]),
                DataRow(cells: [
                  DataCell(Text("2")),

                  DataCell(CircleAvatar()),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                ]),
                DataRow(cells: [
                  DataCell(Text("3")),

                  DataCell(CircleAvatar()),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                ]),
                DataRow(cells: [
                  DataCell(Text("4")),

                  DataCell(CircleAvatar()),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                ]),
                DataRow(cells: [
                  DataCell(Text("5")),

                  DataCell(CircleAvatar()),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                ]),
                DataRow(cells: [
                  DataCell(Text("6")),

                  DataCell(CircleAvatar()),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                  DataCell(Text("John Doe")),
                ]),
              ]),
        ],
      ),
    ),
    );
    // Center(child: Text("Users"));
  }
}
