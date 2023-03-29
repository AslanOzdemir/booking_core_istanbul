import 'package:booking_core_istanbul/ui/home_page/setting_page/setting_page.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'account_page/account_page.dart';
import 'facilities_page/facilities_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List pages = [
    const FacilitiesPage(),
    const AccountPage(),
    const SettingPage(),
  ];

  onIndexChanged(index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.scaffoldBackGroundColor,
      body: SafeArea(

        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  IndexedStack(
                    index: _currentIndex,
                    children: const [
                      FacilitiesPage(),
                      AccountPage(),
                      SettingPage()
                    ],
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).padding.top*0.5,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: buildNavBar(context),
                    ),
                  ),

                ],

              ),
            ),

          ],
        ),
      ),
    );
  }

    buildNavBar(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: ColorApp.bigText,
                    borderRadius: BorderRadius.circular(35)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        icon: Icon(
                          Icons.home,
                          color: ColorApp.whiteText,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        icon: Icon(
                          Icons.person,
                          color: ColorApp.whiteText,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        icon: Icon(
                          Icons.settings,
                          color: ColorApp.whiteText,
                        )),
                  ],
                ),
              );
  }
}


