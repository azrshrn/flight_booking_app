import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/round_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: Styles.primaryColor),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      const RoundBorder(
                        color: Colors.white,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      )),
                            );
                          }),
                        ),
                        Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.flight,
                                color: Colors.white,
                              )),
                        )
                      ])),
                      const RoundBorder(
                        color: Colors.white,
                      ),
                      const Spacer(),
                      Text(ticket['to']['code'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    children: [
                      Text(ticket['from']['name'],
                          style: const TextStyle(color: Colors.white)),
                      const Spacer(),
                      Text(ticket['flying_time'],
                          style: const TextStyle(color: Colors.white)),
                      const Spacer(),
                      Text(ticket['to']['name'],
                          style: const TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: secondary,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: List.generate(
                            (constraints.constrainWidth() / 10).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                      );
                    },
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: secondary,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ticket['date'],
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white)),
                        const Gap(3),
                        Text(
                          "Date",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(ticket['departure_time'],
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white)),
                        const Gap(3),
                        Text(
                          "Departure Time",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${ticket['number']}',
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white)),
                        const Gap(3),
                        Text("Number",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
