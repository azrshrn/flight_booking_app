import 'package:booktickets/screens/ticket_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/app_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: [
          const Gap(40),
          Text(
            "What are\nyou looking for?",
            style: Styles.titleStyle,
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFFF4F6FD)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: size.width * .44,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(25)),
                      color: Colors.white),
                  child: const Center(child: Text("Airline ticket")),
                ),
                Container(
                  width: size.width * .44,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(25)),
                      color: Color(0xFFF4F6FD)),
                  child: const Center(child: Text("Hotel")),
                ),
              ],
            ),
          ),
          const Gap(20),
          const AppIconText(icon: Icons.flight_takeoff, text: "Departure"),
          const Gap(15),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          const Gap(20),
          InkWell(
              onTap: () => {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade700,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Find Tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                ),
              )),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upcoming Flights", style: Styles.headlineStyle2),
              InkWell(
                  onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TicketScreen(),
                        ),
                      ),
                  child: Text("View All",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)))
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg"))),
                  ),
                  const Gap(10),
                  Text(
                    "20% discount on the early booking. Don't miss out this chance!",
                    style: Styles.headlineStyle2,
                  )
                ]),
              ),
              SizedBox(
                width: size.width * .44,
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF3AB8B8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Stack(
                        children: [
                          Positioned(
                            right: -40,
                            top: -40,
                            child: Container(
                              padding: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  border: Border.all(
                                      width: 18,
                                      color: const Color(0xFF189999))),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Column(children: [
                              Text(
                                "Discount for survey",
                                style: Styles.headlineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              const Gap(10),
                              Text(
                                "Take the survey about our services and get more discount.",
                                style: Styles.textStyle
                                    .copyWith(color: Colors.white),
                              )
                            ]),
                          )
                        ],
                      )
                    ]),
                  ),
                  const Gap(15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width * .44,
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xFFEC6545),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Take love",
                              style: Styles.headlineStyle2
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 38)),
                          ]))
                        ]),
                  )
                ]),
              ),
            ],
          ),
          const Gap(20)
        ]),
      ),
    );
  }
}
