import 'package:flutter/material.dart';
import 'package:pos_app/components/login_signup_button.dart';
import 'package:pos_app/components/password_textfield.dart';

import '../components/normal_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/images/pos_logo.jpg",width: 100,),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "ប្រព័ន្ធគ្រប់គ្រងការលក់",
                style: TextStyle(color: Color(0xFF0C7EA5), fontSize: 32),
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
                onPressed: (){

                },
                text: "ចូលប្រព័ន្ធ",
              )
            ],
          ),
        ),
      ),
    );
  }
}
