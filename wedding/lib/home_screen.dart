import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider, PhoneAuthProvider;
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'widgets/widgets.dart';
import 'authentication.dart';

//Custom Widgets
//Icon - Text
//Row(Icon(), Text())
//class IconAndText(icon, text_string)

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Our Wedding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Cover Image (Assets)
            Image.asset('assets/wedding.png'),
            const SizedBox(
              height: 18,
            ),
            const IconAndText(
              Icons.calendar_month,
              'Jan 1',
            ),
            const IconAndText(
              Icons.location_city_outlined,
              'San Fransisco',
            ),

            //we need to add some authentication functionality
            Consumer<ApplicationState>(
              builder: (context, appState, _) => AuthFunc(
                //we pick it up from the appState
                loggedIn: appState.loggedIn,
                signOut: () {
                  //firebase is handling our authentication
                  FirebaseAuth.instance.signOut();
                },
              ),
            ),

            const SizedBox(
              height: 18,
            ),
            const Text('We are getting married, join us!'),
          ],
        ),
      ),
    );
  }
}
