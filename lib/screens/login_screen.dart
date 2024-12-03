// ignore_for_file: library_private_types_in_public_api

import 'package:flash_chat/componenets/rouded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your email')),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
                style: const TextStyle(color: Colors.black),
                onChanged: (value) {
                email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'enter your password')),
            const SizedBox(
              height: 30.0,
            ),
            RoundedButton(
                onPressed: () {
                  log(email);
                  log(password);
                },
                colour: Colors.lightBlueAccent,
                title: 'Log in')
          ],
        ),
      ),
    );
  }
}
