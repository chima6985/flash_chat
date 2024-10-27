import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: const ChatScreen().id,
      routes: {
        '/': (context) => const WelcomeScreen(),
        const WelcomeScreen().id: (context) => const WelcomeScreen(),
        const LoginScreen().id: (context) => const LoginScreen(),
        const RegistrationScreen().id: (context) => const RegistrationScreen(),
        const ChatScreen().id: (context) => const ChatScreen()
      },
    );
  }
}
