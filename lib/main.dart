import 'package:fir_tst/screens/chat_screen.dart';
import 'package:fir_tst/screens/registration_screen.dart';
import 'package:fir_tst/screens/signedin_options.dart';
import 'package:fir_tst/screens/signin_screen.dart';
import 'package:fir_tst/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  //final _auth = FirebaseAuth.instance;
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:ChatScreen(), //RegistrationScreen(), //WelcomeScreen(),
/* _auth.currentUser != null
          ? ChatScreen.screenRoute
          : */
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        SigninScreen.screenRoute: (context) => SigninScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen(),
        SignedInOptions.screenRoute: (context) => SignedInOptions(),
      },
    );
  }
}
