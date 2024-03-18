import 'package:flutter/material.dart';
import 'package:pos_app/components/login_signup_button.dart';
import 'package:pos_app/components/password_textfield.dart';
import 'package:pos_app/test/drawer.dart';
import 'package:pos_app/views/home_screen.dart';

import '../components/normal_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          Positioned.fill(
            child: Container(
              // color: Colors.black.withOpacity(0.5), // 50% opacity black
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/images/pos_logo.jpg",
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "ប្រព័ន្ធគ្រប់គ្រងការលក់",
                    style: TextStyle(
                      color: Color(0xFF0C7EA5),
                      fontSize: 32,
                      // fontFamily: "AKbalthomTechno"
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "POS Management System",
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF179D86),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "ចូលគណនីរបស់អ្នក",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const NormalTextField(
                    hintText: '0977779688',
                    suffixIcon: Icon(Icons.phone_android_outlined),
                    labelText: "លេខទូរស័ព្ទ",
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const StyledTextField(
                    hintText: "************",
                    labelText: "លេខសម្ងាត់",
                    suffixIcon: Icon(Icons.abc),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  LoginButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  App(parentContext: context,)));
                    },
                    text: "ចូលប្រព័ន្ធ",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
