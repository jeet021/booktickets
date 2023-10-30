import 'package:booktickets/screens/tickets_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/app_info_list.dart';
import '../utilis/app_styles.dart';

class viewall_for_airlines extends StatelessWidget {
  const viewall_for_airlines({super.key});

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
          title: Text('Airline Tickets',style: TextStyle(color: Colors.black),),

        ),
        body: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            padding: const EdgeInsets.only(right: 10),
            physics: const BouncingScrollPhysics(),
            children: [
              Gap(20),
              Column(
                children:ticketList.map((MyTickets) => TicketView(ticket: MyTickets)).toList(),
              ),

            ],),
        ),

      ),
    );
  }
}
