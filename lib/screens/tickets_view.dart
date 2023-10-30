import 'package:booktickets/screens/Booking_page.dart';
import 'package:booktickets/utilis/app_styles.dart';
// import 'package:booktickets/widgets/column_layout.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

import '../utilis/app_layout.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this .isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getsize(context);
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>booking_page()));
      },
      child: SizedBox(
        width: size.width*0.95,
        height: 180,
        //height: AppLayout.getHeight(200),
        child: Container(
          margin: const EdgeInsets.only(left: 20,bottom: 10),
          child: Column(
            children: [
              /* This part is showing the bluepart of the card/ticket */
              Container(
                decoration: BoxDecoration(
                    color: isColor==null? Color(0xFF526799): Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("${ticket['from']['code']}",
                          style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                        ),
                        const Spacer(),
                        ThickContiner(isColor:true),
                        Expanded(child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                      List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: isColor==null? Colors.white : Colors.grey.shade300
                                            )),
                                      ))
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.58,
                                  child: Icon(Icons.local_airport_rounded,color: isColor==null? Colors.white:Color(0xFF8ACCF7))),
                            ),
                          ],
                        )
                        ),
                        ThickContiner(isColor:true),
                        const Spacer(),
                        Text("${ticket['to']['code']}",style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                      ],
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:100,
                          child: Text("${ticket['from']['name']}",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ),

                        Text("${ticket['flying_time']}",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),

                        SizedBox(
                          width:100,
                          child: Text("${ticket['to']['name']}",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,textAlign: TextAlign.end,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /* This part is showing the orange of the card/ticket */
              Container(
                color: isColor==null? Styles.orangeColor: Colors.white,//Color(0xFFF37B67),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: isColor==null? Colors.grey.shade200:Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),
                          )
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor==null?Colors.white:Colors.grey.shade300,
                              ),
                            ),
                          )),
                        );
                      },

                      ),
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: isColor==null? Colors.grey.shade200:Colors.white,
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                          )),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: isColor==null? Styles.orangeColor:Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0), bottomRight: Radius.circular(isColor==null?21:0))
                ),
                //padding: const EdgeInsets.all(16),
                padding: const EdgeInsets.only(left: 16, top: 10, right: 16,bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          // AppColumnLayout(
                          //   firstText: ticket['date'],
                          //   secondText: "Date",
                          //   alignment: CrossAxisAlignment.start,
                          // ),

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${ticket['date']}",style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                            const Gap(5),
                            Text("DATE",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${ticket['departure_time']}",style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                            const Gap(5),
                            Text("Departure Time",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                          ],
                        ),

                        Column(
                          children: [
                            Text("${ticket['number']}",style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                            const Gap(5),
                            Text("Number",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}