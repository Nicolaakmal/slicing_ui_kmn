import 'package:flutter/material.dart';
import 'package:slicing_ui_kmn_01/home_page/our_services.dart';
import 'package:slicing_ui_kmn_01/home_page/promotion.dart';
import 'package:slicing_ui_kmn_01/login_page.dart';
import 'package:slicing_ui_kmn_01/home_page/testimonial_widget.dart';
// import 'package:slicing_ui_kmn_01/bottom_nav_bar.dart';
// import 'package:slicing_ui_kmn_01/app_bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key}); // before
  const HomeScreen({Key? key}) : super(key: key); //after


  @override
  Widget build(BuildContext context) {
    String selectedLanguage = 'EN';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  print('Login tapped');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none_outlined,
                        color: Colors.blue),
                    onPressed: () {
                      print('Language icon tapped');
                    },
                  ),
                  DropdownButton<String>(
                    // value: selectedLanguage,
                    underline: Container(),
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
                    items: <String>['EN', 'ES', 'FR'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      print('Language changed to $newValue');
                    },
                  ),
                ],
              ),
            ],
          ),
          elevation: 0,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  OurService(),
                  SizedBox(height: 30),
                  promotion(),
                  SizedBox(height: 30),
                  TestimonialWidget(),
                ],
              ),
            ),
          ),
        ),
        // bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
