//we are hiding the two packages because we want to use them from the firebase_ui_auth package instead
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wedding/guest_book_message.dart';
import 'firebase_options.dart';

//alert the widget treee if the state has changed of a user (loggedIn/out)
class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

//we are looking for real time updates using the firestore functionality
  StreamSubscription<QueryDocumentSnapshot>? _guestBookSubscription;
  List<GuestBookMessage> _guestBookMessages = [];
  //we create the getter here so we can pick it up for when we use the class
  List<GuestBookMessage> get getGuestBookMessages => _guestBookMessages;

  Future<void> init() async {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    FirebaseUIAuth.configureProviders([EmailAuthProvider()]);

    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
        _guestBookSubscription = FirebaseFirestore.instance
            .collection('guestbook')
            .orderBy('timestamp', descending: true)
            .snapshots()
            .listen((snapshot) {
          _guestBookMessages = [];
          for (final doc in snapshot.docs) {
            _guestBookMessages.add(GuestBookMessage(
              name: doc.data()['name'] as String,
              message: doc.data()['text'] as String,
            ));
          }
          notifyListeners();
        }) as StreamSubscription<QueryDocumentSnapshot<Object?>>?;
      } else {
        _loggedIn = false;
        _guestBookMessages = [];
        _guestBookSubscription?.cancel();
      }
      notifyListeners();
    });

    // FirebaseAuth.instance.userChanges().listen(
    //   (user) {
    //     if (user != null) {
    //       _loggedIn = true;
    //     } else {
    //       _loggedIn = false;
    //     }
    //     notifyListeners();
    //   },
    // );
  }

//when a user selects send it adds the following to the collection called guestbook
  Future<DocumentReference> addMessageToGuestBook(String message) {
    if (!_loggedIn) {
      throw Exception('Must be logged in to vieew messages');
    }
    return FirebaseFirestore.instance.collection('guestbook').add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().microsecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  //Future<DocumentReference>
}
