import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_layout.dart';

class AppTicketTaps extends StatelessWidget {
  final String firstTab;
  final String secoundTab;
  const AppTicketTaps(
      {super.key, required this.firstTab, required this.secoundTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              child: Center(child: Text(firstTab)),
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHight(50))),
                  color: Colors.white),
            ),
            Container(
              child: Center(child: Text(secoundTab)),
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(7)),
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
    );
  }
}
