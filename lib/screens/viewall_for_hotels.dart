import 'package:booktickets/screens/tickets_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/app_info_list.dart';
import '../utilis/app_styles.dart';
import 'hotel_screen.dart';
import 'hotel_screen_for_viewall.dart';

class viewall_for_hotels extends StatelessWidget {
  const viewall_for_hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          color: Styles.bgColor,
        ),
      ),
      home: Scaffold(
        // extendBodyBehindAppBar: true,
        backgroundColor: Styles.bgColor,
        appBar: AppBar(
          centerTitle: true,
          leading: BackButton(
            color: Colors.black,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text('Hotels',style: TextStyle(color: Colors.black),),

        ),
        body: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            padding: const EdgeInsets.only(right: 10),
            physics: const BouncingScrollPhysics(),
            children: [
              // Gap(20),
              Column(
                  children:hotelList.map((FirstHotel) => hotel_screen_for_viewall(hotel: FirstHotel)).toList()
              ),
              Gap(10),

            ],),
        ),

      ),
    );
  }
}
