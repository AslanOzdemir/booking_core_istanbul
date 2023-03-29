import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/text_sizes.dart';

class PersonHeader extends StatelessWidget {
  const PersonHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorApp.whiteText,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: ColorApp.buttons,
              radius: 40,
              child: const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(
                  "assets/images/profile.jpeg",
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(
                      color: ColorApp.bigText,
                      fontSize: middleTextFontSize,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Nour Eldien",
                  style: TextStyle(
                      color: ColorApp.bigText,
                      fontSize: normalTextFontSize,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
