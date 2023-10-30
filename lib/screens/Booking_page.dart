import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../utilis/app_styles.dart';

class booking_page extends StatefulWidget {
  const booking_page({super.key});

  @override
  State<booking_page> createState() => _booking_pageState();
}

class _booking_pageState extends State<booking_page> {
  TextEditingController _sourceController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();
  TextEditingController _departureController = TextEditingController();
  TextEditingController _arrivalController = TextEditingController();

  void _submitForm() {
    // Perform your logic here.
  }

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
        appBar: AppBar(
          centerTitle: true,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Airline Tickets',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _sourceController,
                  decoration: InputDecoration(labelText: 'Source'),
                ),
                TextField(
                  controller: _destinationController,
                  decoration: InputDecoration(labelText: 'Destination'),
                ),
                TextField(
                  controller: _departureController,
                  decoration: InputDecoration(labelText: 'Departure Date'),
                ),
                TextField(
                  controller: _arrivalController,
                  decoration: InputDecoration(labelText: 'Arrival Date'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    CollectionReference collRef =
                        FirebaseFirestore.instance.collection('bookings');
                    collRef.add({
                      'source': _sourceController.text,
                      'departure': _departureController.text,
                      'arrival': _arrivalController.text,
                      'destination': _destinationController.text
                    });
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
