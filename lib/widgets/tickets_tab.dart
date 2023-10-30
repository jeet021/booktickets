import 'package:booktickets/utilis/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketsTabs  extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF4F6FD)),
              child: Row(
                children: [
                  /* This is "Airline tickets" text section*/
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Center(child: Text(firstTab),),
                  ),
                  /* This is "Hotels" text section*/
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text(secondTab),),
                  ),
                ],
              ),
            ),
          );
  }
}