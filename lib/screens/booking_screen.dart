import 'package:booktickets/screens/ticket_fullview.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/utils/app_ticket_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Gap(40),
            Text(
              "Tickets",
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
                    child: const Center(child: Text("Upcoming")),
                  ),
                  Container(
                    width: size.width * .44,
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(25)),
                        color: Color(0xFFF4F6FD)),
                    child: const Center(child: Text("Previous")),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Column(
              children: ticketList
                  .map((ticket) => TicketFullView(ticket: ticket))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
