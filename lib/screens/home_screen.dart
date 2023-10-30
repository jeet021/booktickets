import 'package:booktickets/screens/Booking_page.dart';
import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/tickets_view.dart';
import 'package:booktickets/screens/viewall_for_hotels.dart';

import 'package:booktickets/utilis/app_info_list.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'viewall_for_airlines.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text("Book Tickets",style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png")
                        )
                        ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  height: 55,
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: "Search",
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      prefixIcon: const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFFFfffff),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFFFfffff),
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFfffff)
                    ),
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>viewall_for_airlines()));
                      },
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: ticketList.map((MyTickets) => TicketView(ticket: MyTickets)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2,),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>viewall_for_hotels()));
                    },
                    child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:hotelList.map((FirstHotel) => HotelScreen(hotel: FirstHotel)).toList()
            ),
          ),

        ],
      ),
    );
  }
}