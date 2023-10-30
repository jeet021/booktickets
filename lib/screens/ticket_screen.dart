import 'package:flutter/material.dart';
import '../utilis/app_layout.dart';
import '../utilis/utils.dart';

class TicketScreen extends StatefulWidget {
  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    TabController tabController = TabController(length: 2, vsync: this);
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone14promax6Apq (0:3)
        padding: EdgeInsets.fromLTRB(0 * fem, 46 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffeeedf2),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // ticketsErd (0:10)
                margin:
                    EdgeInsets.fromLTRB(22 * fem, 0 * fem, 0 * fem, 26 * fem),
                child: Text(
                  'Tickets',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff3b3b3b),
                  ),
                ),
              ),

              Column(
                children: [
                  Container(
                    // group55i17 (0:4)
                    // margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 38*fem, 44*fem),
                    margin: EdgeInsets.fromLTRB(
                        22 * fem, 0 * fem, 38 * fem, 44 * fem),
                    // padding: EdgeInsets.fromLTRB(4.17*fem, 2.36*fem, 39*fem, 2.36*fem),
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 0.36 * fem, 0 * fem, 0.36 * fem),
                    width: double.infinity,
                    height: 46 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xfff3f6fd),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.black,
                        indicatorColor: Colors.black,
                        indicatorWeight: 2,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50),
                              right: Radius.circular(50)),
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
                ],
              ),

              // Container(
              //   // group55i17 (0:4)
              //   margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 38*fem, 44*fem),
              //   padding: EdgeInsets.fromLTRB(4.17*fem, 2.36*fem, 39*fem, 2.36*fem),
              //   width: double.infinity,
              //   height: 46*fem,
              //   decoration: BoxDecoration (
              //     color: Color(0xfff3f6fd),
              //     borderRadius: BorderRadius.circular(30*fem),
              //   ),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //         // group48P7F (0:6)
              //         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 87.03*fem, 0*fem),
              //         width: 167.8*fem,
              //         height: double.infinity,
              //         decoration: BoxDecoration (
              //           color: Color(0xffffffff),
              //           borderRadius: BorderRadius.only (
              //             topLeft: Radius.circular(30*fem),
              //             bottomLeft: Radius.circular(30*fem),
              //           ),
              //         ),
              //         child: Center(
              //           child: Text(
              //             'Upcoming',
              //             style: SafeGoogleFont (
              //               'Poppins',
              //               fontSize: 16*ffem,
              //               fontWeight: FontWeight.w400,
              //               height: 1.5*ffem/fem,
              //               color: Color(0xff000000),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         // previous2R7 (0:9)
              //         margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
              //         child: Text(
              //           'Previous ',
              //           style: SafeGoogleFont (
              //             'Poppins',
              //             fontSize: 16*ffem,
              //             fontWeight: FontWeight.w400,
              //             height: 1.5*ffem/fem,
              //             color: Color(0xff000000),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                // autogroupglq9iHw (JT3WVaWsAKXPV5kc9tGLQ9)
                margin:
                    EdgeInsets.fromLTRB(24 * fem, 0 * fem, 31 * fem, 44 * fem),
                width: double.infinity,
                height: 620 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle10SUq (0:17)
                      left: 7 * fem,
                      top: 53 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 356 * fem,
                          height: 544 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 * fem),
                                bottomLeft: Radius.circular(20 * fem),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group668cZ (0:18)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        width: 375 * fem,
                        height: 620 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupbjx5ajT (JT3WopVUJpFtRVmZL3bjx5)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 11.92 * fem),
                              width: double.infinity,
                              height: 103.33 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // frame27Twf (0:19)
                                    left: 5 * fem,
                                    top: 0 * fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(14 * fem,
                                          11 * fem, 42 * fem, 15 * fem),
                                      width: 354 * fem,
                                      height: 80 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20 * fem),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group23iFK (0:21)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                7 * fem, 25 * fem, 0 * fem),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // nycRfX (0:22)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      7 * fem),
                                                  child: Text(
                                                    'NYC',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // newyorkied (0:23)
                                                  'New-York',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.2125 * ffem / fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group36qDT (0:28)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 23 * fem, 2 * fem),
                                            width: 116 * fem,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group35MxV (0:30)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      7.63 * fem),
                                                  width: double.infinity,
                                                  height: 24.37 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        // ellipse1VYu (0:31)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                3 * fem,
                                                                1.37 * fem),
                                                        width: 19 * fem,
                                                        height: 18 * fem,
                                                        child: Image.asset(
                                                          'assets/page-1/images/ellipse-1.png',
                                                          width: 19 * fem,
                                                          height: 18 * fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // autogroupxss1p5P (JT3XFJm19EWmyq2PpYXsS1)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                2.5 * fem,
                                                                0 * fem),
                                                        width: 72.5 * fem,
                                                        height: double.infinity,
                                                        child: Stack(
                                                          children: [
                                                            Positioned(
                                                              // materialsymbolsflight6Ho (0:33)
                                                              left: 27 * fem,
                                                              top: 0 * fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 24.37 *
                                                                      fem,
                                                                  height:
                                                                      24.37 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/page-1/images/material-symbols-flight.png',
                                                                    width:
                                                                        24.37 *
                                                                            fem,
                                                                    height:
                                                                        24.37 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // ellipse2jrZ (0:32)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                1.37 * fem),
                                                        width: 19 * fem,
                                                        height: 18 * fem,
                                                        child: Image.asset(
                                                          'assets/page-1/images/ellipse-2.png',
                                                          width: 19 * fem,
                                                          height: 18 * fem,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // h30msSy (0:29)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      6 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '8H 30M',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group25PRK (0:25)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                9 * fem, 0 * fem, 0 * fem),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // ldn8do (0:26)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      5 * fem,
                                                      5 * fem),
                                                  child: Text(
                                                    'LDN',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // london3Vs (0:27)
                                                  'London',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.2125 * ffem / fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // rectangle22wbF (0:36)
                                    left: 5 * fem,
                                    top: 79.4871826172 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 354.91 * fem,
                                        height: 18.88 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group60TZb (0:37)
                                    left: 0 * fem,
                                    top: 83.4615478516 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 19 * fem,
                                        height: 19.87 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-60.png',
                                          width: 19 * fem,
                                          height: 19.87 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group59KLu (0:40)
                                    left: 356 * fem,
                                    top: 83.4615478516 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 19 * fem,
                                        height: 19.87 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-59.png',
                                          width: 19 * fem,
                                          height: 19.87 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogrouptpv9Dx5 (JT3XNJZLynC7pWRoNFTPv9)
                              margin: EdgeInsets.fromLTRB(
                                  11 * fem, 0 * fem, 17 * fem, 0 * fem),
                              width: double.infinity,
                              height: 504.74 * fem,
                              child: Container(
                                // group65N4H (0:43)
                                width: 340 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupp6jmsmj (JT3XY3n7BUAzEp2UNup6Jm)
                                      padding: EdgeInsets.fromLTRB(3 * fem,
                                          0 * fem, 0 * fem, 35.64 * fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group64Cp1 (0:44)
                                            margin: EdgeInsets.fromLTRB(
                                                6.19 * fem,
                                                0 * fem,
                                                7 * fem,
                                                53.53 * fem),
                                            width: double.infinity,
                                            height: 46.83 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // group23XLV (0:45)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      51.8 * fem,
                                                      0.33 * fem),
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // mayTzq (0:46)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                6.49 * fem),
                                                        child: Text(
                                                          '1 May',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // datexRo (0:47)
                                                        'Date',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff757373),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // group33JkZ (0:51)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      45 * fem,
                                                      0.8 * fem),
                                                  height: 46.03 * fem,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // amr1P (0:52)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                7.45 * fem,
                                                                6.03 * fem),
                                                        child: Text(
                                                          '08:00 AM ',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // departuretimeLhF (0:53)
                                                        'Departure Time',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff7e7b7b),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // group25sBP (0:48)
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        // psK (0:49)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                1.54 * fem,
                                                                4.44 * fem),
                                                        child: Text(
                                                          '23',
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // numberxTj (0:50)
                                                        'Number',
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff888888),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group62hw7 (0:55)
                                            margin: EdgeInsets.fromLTRB(5 * fem,
                                                0 * fem, 0 * fem, 35.64 * fem),
                                            width: 332 * fem,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // autogroupxv61FBw (JT3XsYDdar8j5RDpQEXV61)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      5.79 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // flutterdbBbP (0:56)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                92 * fem,
                                                                4.97 * fem),
                                                        child: Text(
                                                          'Flutter DB',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 22 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // Jg1 (0:58)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                4.97 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '5221478566',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 22 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupfsg98f3 (JT3Xx7vLC5yGi8DGBAFSG9)
                                                  margin: EdgeInsets.fromLTRB(
                                                      1 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // passengerS9w (0:57)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                181 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Passenger',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff8e8e8e),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // passport8oT (0:59)
                                                        'Passport',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff8e8e8e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group61ga5 (0:60)
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // autogrouprijtqxm (JT3Y92mpNCZhSD3W7SRijT)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      5.79 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // B13 (0:61)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                91 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '055 444 77147',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 22 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // b2sg28giV (0:63)
                                                        'B2SG28',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 22 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupessf2XT (JT3YD2f9zE6Tv2RARZEssF)
                                                  margin: EdgeInsets.fromLTRB(
                                                      1 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // numberofeticket6GR (0:62)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                85 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Number of E-ticket',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.2125 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff8e8e8e),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // bookingcodezMo (0:64)
                                                        'Booking code',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff8e8e8e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group63Kus (0:65)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 105.16 * fem),
                                      width: double.infinity,
                                      height: 49.84 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            // autogroupntiySzV (JT3YtBCbMuFJn4hWKHnTiy)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 99 * fem, 0 * fem),
                                            width: 151 * fem,
                                            height: 46.86 * fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // paymentmehtodwgM (0:66)
                                                  left: 7 * fem,
                                                  top: 26.8589630127 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 130 * fem,
                                                      height: 20 * fem,
                                                      child: Text(
                                                        'Payment mehtod',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff8e8e8e),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // rectangle23FBF (0:69)
                                                  left: 0 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 50 * fem,
                                                      height: 15.9 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/rectangle-23.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // AZ7 (0:70)
                                                  left: 55 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 96 * fem,
                                                      height: 27 * fem,
                                                      child: Text(
                                                        '*** 2462',
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 22 * ffem,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroup6qpkeUH (JT3YybDEojEgLu9DKf6QPK)
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // QTT (0:67)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      2.84 * fem),
                                                  child: Text(
                                                    '\$249.99',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize: 22 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // price8PT (0:68)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      11 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Price',
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2125 * ffem / fem,
                                                      color: Color(0xff8e8e8e),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // rectangle25f8V (0:54)
                                      margin: EdgeInsets.fromLTRB(
                                          4 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      width: 322 * fem,
                                      height: 67.56 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
                                        child: Image.asset(
                                          'assets/page-1/images/rectangle-25.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   // group55k9w (0:72)
              //   padding: EdgeInsets.fromLTRB(41.74*fem, 16*fem, 42.32*fem, 18*fem),
              //   width: double.infinity,
              //   decoration: BoxDecoration (
              //     color: Color(0xffffffff),
              //   ),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              // Container(
              //   // vectorem7 (0:77)
              //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80.56*fem, 0*fem),
              //   width: 23.3*fem,
              //   height: 24*fem,
              //   child: Image.asset(
              //     'assets/page-1/images/vector.png',
              //     width: 23.3*fem,
              //     height: 24*fem,
              //   ),
              // ),
              // Container(
              //   // vectorjnZ (0:76)
              //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 87.36*fem, 0*fem),
              //   width: 23.3*fem,
              //   height: 24*fem,
              //   child: Image.asset(
              //     'assets/page-1/images/vector-XZj.png',
              //     width: 23.3*fem,
              //     height: 24*fem,
              //   ),
              // ),
              // Container(
              //   // biticketfillTiZ (0:78)
              //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91.82*fem, 0*fem),
              //   width: 23.3*fem,
              //   height: 15*fem,
              //   child: Image.asset(
              //     'assets/page-1/images/bi-ticket-fill.png',
              //     width: 23.3*fem,
              //     height: 15*fem,
              //   ),
              // ),
              // Container(
              //   // fluentperson20fillednVw (0:74)
              //   width: 16.31*fem,
              //   height: 19.2*fem,
              //   child: Image.asset(
              //     'assets/page-1/images/fluent-person-20-filled.png',
              //     width: 16.31*fem,
              //     height: 19.2*fem,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
