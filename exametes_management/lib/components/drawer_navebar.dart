import 'package:bottom_nav_layout/bottom_nav_layout.dart';
import 'package:exametes_management/authentication/password_change.dart';
import 'package:exametes_management/authentication/password_reset.dart';
import 'package:exametes_management/authentication/profile_update.dart';
import 'package:exametes_management/screens/calender.dart';
import 'package:exametes_management/screens/dashboard.dart';
import 'package:exametes_management/screens/shifts.dart';
import 'package:flutter/material.dart';

class NavBarController extends StatefulWidget {
  static const id = "navbar_controller";
  const NavBarController({super.key});

  @override
  State<NavBarController> createState() => _NavBarControllerState();
}

class _NavBarControllerState extends State<NavBarController> {
  final PageController pageController = PageController(initialPage: 0);
  int pageIndexes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Dashboard",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            size: 40, //change size on your need
            color: Colors.black, //change color on your need
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("images/logo.png"),
                  ),
                  accountName: Text(
                    "Exametes App",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "Exametesapp@exarth.com",
                    style: TextStyle(color: Colors.black),
                  )),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile Update"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileUpdate()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.lock_open_outlined),
                title: const Text("Password Change"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PasswordChange()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.link_sharp),
                title: const Text("Password Reset"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResetPassword()),
                  );
                },
              ),
            ],
          ),
        ),
        body: BottomNavLayout(
          // The app's destinations
          pages: [
            (_) => const Dashboard(),
            (_) => const Shifts(),
            (_) => const Calender(),
          ],
          bottomNavigationBar: (currentIndex, onTap) => BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => onTap(index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.all_inclusive_outlined), label: 'Shifts'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Calender'),
            ],
          ),
        ));
  }
}
