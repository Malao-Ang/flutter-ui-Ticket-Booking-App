import 'package:booking_app/screens/widgets/column_layout.dart';
import 'package:booking_app/screens/widgets/layout_builder_widgets.dart';
import 'package:booking_app/screens/widgets/thick_container.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHight(GetPlatform.isAndroid == true ? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(children: [
          /*
          
          
          **showing the blue part if card
          
          */
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHight(21)),
                    topRight: Radius.circular(AppLayout.getHight(21)))),
            padding: EdgeInsets.all(AppLayout.getHight(16)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3,
                    ),
                    Expanded(child: Container()),
                    ThickContainer(
                      isColor: true,
                    ),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHight(24),
                          child: AppLayoutBuilderWidget(sections: 6),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : Color(0xFF8ACCF7),
                            ),
                          ),
                        ),
                      ],
                    )),
                    ThickContainer(
                      isColor: true,
                    ),
                    const Spacer(),
                    Text(
                      ticket['to']['code'],
                      style: isColor == null
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3,
                    )
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['from']['name'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                    ),
                    Text(
                      ticket['flying_time'],
                      style: isColor == null
                          ? Styles.headLineStyle4.copyWith(color: Colors.white)
                          : Styles.headLineStyle4,
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
          /*
        show the orange part of the card/ticket
        
         */
          ,
          Container(
            color: isColor == null ? Styles.orangeColor : Colors.white,
            child: Row(children: [
              SizedBox(
                height: AppLayout.getHight(20),
                width: AppLayout.getWidth(10),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)))),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                              width: AppLayout.getWidth(5),
                              height: AppLayout.getHight(1),
                              child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white)),
                            )),
                  );
                }),
              )),
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(isColor == null ? 21 : 0),
                            bottomLeft:
                                Radius.circular(isColor == null ? 21 : 0)))),
              )
            ]),
          )
          /* 
  bottom part of the orange card/ticket

       */
          ,
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0))),
            padding:
                const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstString: ticket['date'],
                    secoundString: "Date",
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                      firstString: ticket['departure_time'],
                      secoundString: "Departure time",
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor),
                  AppColumnLayout(
                      firstString: '${ticket['number']}',
                      secoundString: "Number",
                      alignment: CrossAxisAlignment.end,
                      isColor: isColor),
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
