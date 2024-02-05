// login_page.dart
import 'package:flutter/material.dart';
import 'package:slicing_ui_kmn_01/home_page.dart';
import 'package:slicing_ui_kmn_01/email_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Login/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login dengan No. HP'),
                  style: ElevatedButton.styleFrom(
                      // onPrimary: Colors.black, // Text color
                      ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmailLogin()),
                    );
                  },
                  child: Text('Login dengan Email'),
                  style: ElevatedButton.styleFrom(
                      // onPrimary: Colors.black, // Text color
                      ),
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label: Text('Login dengan Google'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // onPrimary: Colors.black, // Text color
                      // primary: Colors.white, // Background color
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
