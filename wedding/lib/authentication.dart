import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthFunc extends StatelessWidget {
  const AuthFunc({super.key, required this.loggedIn, required this.signOut});

  final bool loggedIn;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(
            8,
          ),
          child: ElevatedButton(
            onPressed: () {
              //if not logged in show sign-in page else signout
              !loggedIn ? context.push('/sign-in') : signOut();
            },
            child: !loggedIn ? const Text('RSVP-Login') : const Text('Logout'),
          ),
        ),
        Visibility(
          visible: loggedIn,
          child: Padding(
            padding: const EdgeInsets.all(8),
            //collect it to a call
            child: ElevatedButton(
              onPressed: () {
                context.push('/profile');
              },
              child: const Text('Profile'),
            ),
          ),
        ),
      ],
    );
  }
}
