import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VoterFirebaseUser {
  VoterFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VoterFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VoterFirebaseUser> voterFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VoterFirebaseUser>(
      (user) {
        currentUser = VoterFirebaseUser(user);
        return currentUser!;
      },
    );
