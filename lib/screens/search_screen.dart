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
            FittedBox(
              child: Container(
                padding: EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    Container(
                      child: Center(child: Text("Airline tickets")),
                      width: size.width * .44,
                      padding:
                          EdgeInsets.symmetric(vertical: AppLayout.getHight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHight(50))),
                          color: Colors.white),
                    ),
                    Container(
                      child: Center(child: Text("Hotels")),
                      width: size.width * .44,
                      padding:
                          EdgeInsets.symmetric(vertical: AppLayout.getHight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHight(50))),
                          color: Colors.transparent),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHight(50)),
                    color: const Color(0xFFF4F6FD)),
              ),
            ),
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
          ]),
    );
  }
}
