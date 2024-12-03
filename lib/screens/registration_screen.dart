import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/componenets/rouded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String id = 'registration_screen';

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
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
              decoration:kTextFieldDecoration.copyWith(hintText: 'Enter your email')
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password ')
            ),
            const SizedBox(
              height: 30,
            ),
            RoundedButton(
              colour: Colors.blueAccent,
              title: 'Register',
              onPressed: ()async{
                // log(email);
                // log(password);
                try {
                    final newUser = await  _auth.createUserWithEmailAndPassword(email: email, password: password);
                    if(newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                }
               catch(e) {
                print(e);
               }
              },
            )
          ],
        ),
      ),
    );
  }
}
