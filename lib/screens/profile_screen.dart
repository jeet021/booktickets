import 'package:firebase_auth/firebase_auth.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String location="";
  String area="";

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> Getaddress(Position position) async {
    List<Placemark> placemark=await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemark);

    Placemark place=placemark[2];
    area="${place.name}";
    location="${place.locality},${place.administrativeArea},${place.postalCode},";
  }



  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth=FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    area,
                    style: Styles.headLineStyle2,
                  ),
                  Gap(2),
                  Row(
                    children: [
                      Text(location,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500)),
                      InkWell(
                        onTap: () async {
                          Position position=await _determinePosition();

                          // location="Lat: ${position.latitude}";
                          Getaddress(position);

                          setState(() {

                          });
                        },
                        child: Icon(Icons.refresh),
                      )
                    ],
                  ),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: AlertDialog(
                                title: Text("Are you sure?"),
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);

                                  }, child: const Text("No")),

                                  TextButton(onPressed: (){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                                    _auth.signOut();
                                    Navigator.pop(context);
                                  }, child: const Text("Yes")),
                                ],
                              ),
                            );
                          },

                        );
                      },
                      child: Icon(
                        FluentSystemIcons.ic_fluent_sign_out_filled,
                      ))
                ],
              )
            ],
          ),
          Gap(8),
          Divider(color: Colors.grey.shade300),
          Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
              Positioned(
                  top: -45,
                  right: -40,
                  child: Container(
                    padding: EdgeInsetsDirectional.all(30),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xFF264CD2))),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: Styles.headLineStyle3.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flights this year",
                          style: Styles.headLineStyle4.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
