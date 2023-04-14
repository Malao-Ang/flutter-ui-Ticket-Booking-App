import 'package:booking_app/screens/ticket_taps.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_info.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHight(20),
                vertical: AppLayout.getHight(20)),
            children: [
              Gap(AppLayout.getHight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHight(20)),
              AppTicketTaps(
                firstTab: "Upcoming",
                secoundTab: "Previous",
              ),
              Gap(AppLayout.getHight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                child: Column(
                  children: [],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
