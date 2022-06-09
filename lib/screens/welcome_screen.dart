import 'package:fir_tst/screens/registration_screen.dart';
import 'package:fir_tst/screens/signin_screen.dart';
import 'package:fir_tst/widgets/my_buttons.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
/*                     Image(
                      image: AssetImage('images/logo.png'),
                    ), */
/*                     Container(
                      height: 180,
                      child: Image.asset('images/logo.png'),
                    ), */
                    Text(
                      'Message me',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                color: Colors.yellow[900]!,
                title: 'Sign in',
                onPressed: () {
                  Navigator.pushNamed(context, SigninScreen.screenRoute);
                },
              ),
              MyButton(
                color: Colors.blue[800]!,
                title: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.screenRoute);
                },
              ),
            ],
          ),
        ));
  }
}
