import 'package:booktickets/utilis/app_layout.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class hotel_screen_for_viewall extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const hotel_screen_for_viewall({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getsize(context);
    return Column(
      children: [
        Container(
          width: size.width*0.92,
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          margin: const EdgeInsets.only(right: 17,left: 20),
          decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(24),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.shade300,
              //     blurRadius: 20,
              //     spreadRadius: 5,
              //   )
              // ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(vertical: 20),
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Styles.primaryColor,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/${hotel['image']}")
                    )
                ),
              ),
              const Gap(10),
              Text("${hotel['place']}",style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
              const Gap(10),
              Text("${hotel['destination']}",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
              const Gap(10),
              Text("\$${hotel['price']}/night",style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),),
            ],
          ),

        ),
        Gap(10)
      ],
    );
  }
}
