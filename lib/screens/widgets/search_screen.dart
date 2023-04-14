import 'package:booking_app/screens/ticket_taps.dart';
import 'package:booking_app/screens/widgets/double_text_widget.dart';
import 'package:booking_app/screens/widgets/icon_text_widget.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHight(20)),
          children: [
            Gap(AppLayout.getHight(40)),
            Text(
              "What are \nyou looking for?",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHight(40)),
            AppTicketTaps(firstTab: "Airline tickets", secoundTab: "Hotels"),
            Gap(AppLayout.getHight(20)),
            AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHight(25)),
            AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHight(25)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHight(18),
                  horizontal: AppLayout.getHight(15)),
              decoration: BoxDecoration(
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            Gap(AppLayout.getHight(40)),
            AppDoubleTextWidget(
                bigText: "Upcoming Flights", smallText: "View all"),
            Gap(AppLayout.getHight(15)),
            Row(
              children: [
                Container(
                  height: AppLayout.getHight(400),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHight(20))),
                  child: Column(
                    children: [
                      Container(
                          height: AppLayout.getHight(190),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppLayout.getHight(12)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/sit.jpg")))),
                      Gap(AppLayout.getHight(12)),
                      Text(
                        "20% discount on the early booking of this flight, Don't miss.",
                        style: Styles.headLineStyle2,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: AppLayout.getHight(10)),
                          width: size.width * 0.44,
                          height: AppLayout.getHight(210),
                          decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHight(18)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHight(15),
                              horizontal: AppLayout.getHight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\nfor survay",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Gap(AppLayout.getHight(10)),
                              Text(
                                "Take the survay about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            margin:
                                EdgeInsets.only(left: AppLayout.getHight(10)),
                            padding: EdgeInsets.all(AppLayout.getHight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              ),
                              color: Colors.transparent,
                            ),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHight(15)),
                    Container(
                      margin: EdgeInsets.only(left: AppLayout.getHight(10)),
                      width: size.width * 0.44,
                      height: AppLayout.getHight(210),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHight(15),
                          horizontal: AppLayout.getHight(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHight(18)),
                          color: const Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHight(5)),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '😊', style: TextStyle(fontSize: 28)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 50)),
                            TextSpan(text: '🤗', style: TextStyle(fontSize: 28))
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ]),
    );
  }
}
