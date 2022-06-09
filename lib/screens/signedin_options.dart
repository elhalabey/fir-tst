import 'package:fir_tst/widgets/my_buttons.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class SignedInOptions extends StatelessWidget {
  static const String screenRoute = 'signedin_options';
  const SignedInOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    //if (signedInUser.email == "rowan@halaby.com") isVisible = true;
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
/*                   Container(
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
              title: 'Chat',
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.screenRoute);
              },
            ),
            if (isVisible)
              MyButton(
                color: Colors.blue[800]!,
                title: 'Register',
                onPressed: () {
                  //Navigator.pushNamed(context, RegistrationScreen.screenRoute);
                },
              ),
          ],
        ),
      ),
    );
  }
}
