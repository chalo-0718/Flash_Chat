import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_firebase/screens/welcome_screen.dart';
import 'package:flash_chat_firebase/screens/login_screen.dart';
import 'package:flash_chat_firebase/screens/registration_screen.dart';
import 'package:flash_chat_firebase/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyBzIFJAy0NJS6hpFxuAW81tvj2aZOhX8oY",
    authDomain: "web-connection-ba7a5.firebaseapp.com",
    projectId: "web-connection-ba7a5",
    storageBucket: "web-connection-ba7a5.appspot.com",
    messagingSenderId: "578544779323",
    appId: "1:578544779323:web:f067871eccd836cc8e1c1e",
    measurementId: "G-Z7L554MGVX",
  ),);
  runApp(FlashChat());
}
class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
    );
  }
}