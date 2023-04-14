// import 'dart:html';

import 'package:booking_app/screens/ticket_taps.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/screens/widgets/column_layout.dart';
import 'package:booking_app/screens/widgets/layout_builder_widgets.dart';
import 'package:booking_app/utils/app_info.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_layout.dart';

class TicketScreen extends StatelessWidget {
  final bool? isColor;
  const TicketScreen({super.key, this.isColor});

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
              SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                            firstString: "Flutter DB",
                            secoundString: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: true),
                        AppColumnLayout(
                            firstString: "5221 364869",
                            secoundString: "passport",
                            alignment: CrossAxisAlignment.end,
                            isColor: true),
                      ],
                    ),
                    Gap(AppLayout.getHight(20)),
                    AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                            firstString: "0055 444 77147",
                            secoundString: "Number of E-ticket",
                            alignment: CrossAxisAlignment.start,
                            isColor: true),
                        AppColumnLayout(
                            firstString: "B2SG28",
                            secoundString: "Booking code",
                            alignment: CrossAxisAlignment.end,
                            isColor: true),
                      ],
                    ),
                    Gap(AppLayout.getHight(20)),
                    AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 25,
                                ),
                                Text(
                                  "*** 2462",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        AppColumnLayout(
                          firstString: '\$249.99',
                          secoundString: "Passenger",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              /*

          barcode widjet
          */

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHight(21)),
                        bottomRight: Radius.circular(AppLayout.getHight(21)))),
                margin: EdgeInsets.only(
                    left: AppLayout.getHight(15),
                    right: AppLayout.getHight(15)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHight(15),
                    bottom: AppLayout.getHight(15)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
