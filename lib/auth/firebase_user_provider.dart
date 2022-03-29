import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class OffroadistChatsFirebaseUser {
  OffroadistChatsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

OffroadistChatsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<OffroadistChatsFirebaseUser> offroadistChatsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<OffroadistChatsFirebaseUser>(
            (user) => currentUser = OffroadistChatsFirebaseUser(user));
