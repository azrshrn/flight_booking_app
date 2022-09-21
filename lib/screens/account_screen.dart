import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const Gap(40),
            Text(
              "Account",
              style: Styles.titleStyle,
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pablo Amirul", style: Styles.headlineStyle2),
                    const Gap(5),
                    Text("pablo_amirul@gmail.com",
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.grey.shade600)),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/one.png"))),
                )
              ],
            ),
            const Divider(
              height: 40,
            ),
            Text("Notifications",
                style: Styles.headlineStyle3.copyWith(color: Colors.black)),
            const Divider(height: 40),
            Text("Privacy",
                style: Styles.headlineStyle3.copyWith(color: Colors.black)),
            const Divider(height: 40),
            Text("Help Centre",
                style: Styles.headlineStyle3.copyWith(color: Colors.black)),
            const Divider(height: 40),
            Text("Support Us",
                style: Styles.headlineStyle3.copyWith(color: Colors.black)),
            const Divider(height: 40),
            Text("About Us",
                style: Styles.headlineStyle3.copyWith(color: Colors.black)),
            const Divider(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
