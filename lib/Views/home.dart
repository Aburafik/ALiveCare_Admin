import 'package:alice_care_admin/Providers/app_providers.dart';
import 'package:alice_care_admin/Routes/routers.dart';
import 'package:alice_care_admin/Utils/widgets.dart';
import 'package:alice_care_admin/utils/color_theme.dart';
import 'package:flutter/material.dart';

String currentRoute = "Home";
AppRouter _appRouter = AppRouter();
// AppProvider appProvider = AppProvider();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.primaryColor,
        body: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 8,
              child: Column(
                children: [
                  aliveLogo(),
                  NavBarTab(
                    tabTitle: "Home",
                    icon: Icons.home,
                    onTap: () {
                      setState(() {
                        currentRoute = "Home";
                      });
                    },
                  ),
                  NavBarTab(
                    tabTitle: "Users",
                    icon: Icons.person,
                    onTap: () {
                      setState(() {
                        currentRoute = "Users";
                      });
                    },
                  ),
                  NavBarTab(
                    tabTitle: "Doctors",
                    icon: Icons.group_add_outlined,
                    onTap: () {
                      setState(() {
                        currentRoute = "Doctors";
                      });
                    },
                  ),
                  NavBarTab(
                    tabTitle: "Pharmacies",
                    icon: Icons.local_pharmacy,
                    onTap: () {
                      setState(() {
                        currentRoute = "Pharmacies";
                      });
                    },
                  ),
                  NavBarTab(
                      tabTitle: "Ambulance Service",
                      icon: Icons.emoji_transportation_outlined,
                      onTap: () {
                        setState(() {
                          currentRoute = "Ambulance";
                        });
                      }),
                  NavBarTab(
                    tabTitle: "Complaince",
                    icon: Icons.report_gmailerrorred_rounded,
                    
                    onTap: () {
                      setState(() {
                        currentRoute = "Complaince";
                      });
                    },
                  ),
                  NavBarTab(
                    tabTitle: "Orders",
                    icon: Icons.shopping_cart_outlined,
                    onTap: () {
                      setState(() {
                        currentRoute = "Complaince";
                      });
                    },
                  ),
                  NavBarTab(
                    tabTitle: "ADMIN",
                    icon: Icons.person,
                    onTap: () {
                      setState(() {
                        currentRoute = "Complaince";
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    appBar(),
                    Expanded(child: _appRouter.selecetedPage(currentRoute))
                  ],
                ),
                color: Colors.white,
              ),
            ),
          ],
        ));
  }

  Container appBar() {
    return Container(
      color: ColorTheme.primaryColor,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              currentRoute,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: ColorTheme.whiteColor,
              ))
        ],
      ),
    );
  }
}
