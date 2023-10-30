import 'package:booktickets/screens/hotel_screen_for_viewall.dart';
import 'package:booktickets/utilis/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utilis/app_info_list.dart';
import '../utilis/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreen2State();
}

class _SearchScreen2State extends State<SearchScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 2, vsync: this);
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, ),

        child: Column(
          children: [
            Gap(35),
            Row(
              children: [
                // Gap(20),
                Text(
                  "What are\nyou looking for?",
                  style: Styles.headLineStyle1.copyWith(fontSize: 35),
                ),
              ],
            ),
            Gap(20),
            Container(
              width: size.width * .95,
              height: 40,
              // margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF4F6FD)),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorWeight: 2,
                  indicator: BoxDecoration(
                    borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: 'Airline tickets',
                    ),
                    Tab(
                      text: 'Hotels',
                    ),
                  ],
                ),
              ),
            ),
            Gap(20),
            Expanded(
                child: TabBarView(
                controller: tabController,
                children: [
                 SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                       Container(
                         child:TextField(

                           decoration: InputDecoration(
                               hintText: "Departure",
                               contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                               prefixIcon: Icon(
                                 Icons.flight_takeoff_rounded,
                                 color: Color(0xFFBFC2DF),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(
                                   color: const Color(0xFFFfffff),
                                   width: 2,
                                 ),
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(
                                   color: const Color(0xFFFfffff),
                                   width: 2,
                                 ),
                               ),
                               filled: true,
                               fillColor: const Color(0xFFFfffff)
                           ),
                         ),
                       ),
                       const Gap(20),
                       /*This is for Arrival and icon*/
                       Container(
                        child: TextField(
                           decoration: InputDecoration(
                               hintText: "Arrival",
                               contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                               prefixIcon: Icon(
                                 Icons.flight_land_rounded,
                                 color: Color(0xFFBFC2DF),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(
                                   color: const Color(0xFFFfffff),
                                   width: 2,
                                 ),
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(
                                   color: const Color(0xFFFfffff),
                                   width: 2,
                                 ),
                               ),
                               filled: true,
                               fillColor: const Color(0xFFFfffff)
                           ),
                         ),
                       ),
                       const Gap(25),
                       /*This is for "Find tickets btn" section*/
                       SizedBox(
                         width: size.width * .95,
                         height: 50,
                         child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Color(0xD91130CE),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))), child: Text("Find Ticket")),
                       ),
                       const Gap(40),
                       /*This is For upcoming flights and view all*/
                       Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "Upcoming Flights",
                               style: Styles.headLineStyle2,
                             ),
                             InkWell(
                                 onTap: () {
                                   print("You are tapped");
                                 },
                                 child: Text(
                                   "View all",
                                   style:
                                   Styles.textStyle.copyWith(color: Styles.primaryColor),
                                 ))
                           ],
                         ),
                       ),
                       const Gap(15),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             height: 425,
                             width: size.width*0.42,
                             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: [BoxShadow(
                                   color: Colors.grey.shade200,
                                   blurRadius: 1,
                                   spreadRadius: 1,
                                 )]
                             ),
                             child: Column(
                               children: [
                                 Container(
                                   height:190,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(12),
                                       image: DecorationImage(
                                         fit: BoxFit.cover,
                                         image: AssetImage("assets/images/sit.jpg"),
                                       )
                                   ),
                                 ),
                                 const Gap(12),
                                 Text("20% discount on the early booking of this fligh. Don't miss.",style: Styles.headLineStyle2,)
                               ],
                             ),
                           ),
                           Column(

                             children: [
                               Container(
                                 padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),

                                 width: size.width*0.44,
                                 height: 200,
                                 decoration: BoxDecoration(
                                   color: Color(0xFF3AB8B8),
                                   borderRadius: BorderRadius.circular(18),

                                 ),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                                     const Gap(10),
                                     Text("Take the servey about the our services and get discount",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),),

                                   ],
                                 ),
                               ),
                               const Gap(15),
                               Container(
                                 padding: EdgeInsets.symmetric(vertical: 15,horizontal: 11),

                                 width: size.width*0.44,
                                 height: 210,
                                 decoration: BoxDecoration(
                                   color: Color(0xFFEC6545),
                                   borderRadius: BorderRadius.circular(18),

                                 ),
                                 child: Column(
                                   children: [
                                     Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                     const Gap(5),
                                     // FittedBox(
                                     //   child: Container(
                                     //     child: Row(
                                     //       children: [
                                     //         Text("😁",style: TextStyle(fontSize: 32),),
                                     //         Text("😎",style: TextStyle(fontSize: 45),),
                                     //         Text("😁",style: TextStyle(fontSize: 32),),
                                     //       ],
                                     //     ),
                                     //   ),
                                     // )


                                     RichText(
                                       text:const TextSpan(
                                           children: [
                                             TextSpan(
                                               text: "😍",
                                               style: TextStyle(fontSize: 32),
                                             ),
                                             TextSpan(
                                               text: "🥰",
                                               style: TextStyle(fontSize: 45),
                                             ),
                                             TextSpan(
                                               text: "😘",
                                               style: TextStyle(fontSize: 32),
                                             ),
                                           ]
                                       ) ,
                                     )
                                   ],
                                 ),
                               )
                             ],
                           )
                         ],
                       ),
                     ],
                   ),
                 ),
                  Container(child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                        children:hotelList.map((FirstHotel) => hotel_screen_for_viewall(hotel: FirstHotel)).toList()
                    ),
                  ),)
                ]),
            )
          ],
        ),
      ),
    );
  }
}
