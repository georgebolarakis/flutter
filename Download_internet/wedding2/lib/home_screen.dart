import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'package:flutter/material.dart';
import 'authentication.dart';
import 'guest_book.dart';

// CUSTOM WIDGET
// ICON - TEXT
// ROW(Icon(),Text())
// class IconAndText(icon,text_string)
import 'widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Our Wedding')),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Cover Image (Assets),
                Image.asset('assets/wedding.png'),
                const SizedBox(height: 8),
                IconAndText(Icons.calendar_today, 'Jan 1'),
                IconAndText(Icons.location_city_outlined, 'San Francisco'),

                Consumer<ApplicationState>(
                  builder: (context, appState, _) => AuthFunc(
                      loggedIn: appState.loggedIn,
                      signOut: () {
                        FirebaseAuth.instance.signOut();
                      }),
                ),

                const SizedBox(
                  height: 8,
                ),
                Text('We are getting married, join us!'),

                Consumer<ApplicationState>(
                  builder: (context, appState, _) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (appState.loggedIn) ...[
                          // SPREAD OPERATOR in DART
                          const Text('Messages:'),
                          GuestBook(
                            addMessage: (message) =>
                                appState.addMessageToGuestBook(message),
                            messages: appState.guestBookMessages,
                          )
                        ]
                      ]),
                )
              ]),
        ));
  }
}
