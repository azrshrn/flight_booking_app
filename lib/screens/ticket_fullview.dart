import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/round_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketFullView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketFullView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.black)),
                    const Spacer(),
                    const RoundBorder(
                      color: Colors.blueAccent,
                    ),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: 24,
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
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
                                            color: Colors.blueAccent),
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
                              color: Colors.blueAccent,
                            )),
                      )
                    ])),
                    const RoundBorder(
                      color: Colors.blueAccent,
                    ),
                    const Spacer(),
                    Text(ticket['to']['code'],
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.black)),
                  ],
                ),
                const Gap(5),
                Row(
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const Spacer(),
                    Text(ticket['flying_time'],
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Text(ticket['to']['name'],
                        style: TextStyle(color: Colors.grey.shade600)),
                  ],
                )
              ],
            ),
          ),
          const Gap(10),
          Row(
            children: [
              const SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)))),
              ),
              Expanded(child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
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
                                      BoxDecoration(color: Colors.grey)),
                            )),
                  );
                },
              )),
              const SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)))),
              )
            ],
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket['date'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.black)),
                      const Gap(3),
                      Text(
                        "Date",
                        style: Styles.headlineStyle4
                            .copyWith(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(ticket['departure_time'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.black)),
                      const Gap(3),
                      Text(
                        "Departure Time",
                        style: Styles.headlineStyle4
                            .copyWith(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${ticket['number']}',
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.black)),
                      const Gap(3),
                      Text("Number",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.grey.shade600))
                    ],
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
