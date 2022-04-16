import 'package:alice_care_admin/Utils/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            updatesCard(context),
            updatesCard(context),
            updatesCard(context),
            updatesCard(context),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Card(
                  child: Container(
                width: MediaQuery.of(context).size.height / 3,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Active Users"),
                        Text("Active Users"),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 60.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 10.0,
                      percent: 0.4,
                      center: new Text(
                        "40 %",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Colors.yellow,
                      progressColor: Colors.red,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text("Active Users"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.red,
                              size: 20,
                            ),
                            Text("In active Users"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        )
      ],
    ));
  }
}

updatesCard(BuildContext context, {String? title, String? subtitle}) {
  return Container(
    height: 110,
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "18",
          style: TextStyle(
              color: ColorTheme.whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
        Text(
          "Updates",
          style: TextStyle(color: ColorTheme.whiteColor, fontSize: 20),
        ),
      ],
    ),
    color: ColorTheme.primaryColor,
    width: MediaQuery.of(context).size.height / 3,
  );
}
