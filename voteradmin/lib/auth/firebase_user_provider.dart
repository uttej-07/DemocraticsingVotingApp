import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VoteradminFirebaseUser {
  VoteradminFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VoteradminFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VoteradminFirebaseUser> voteradminFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VoteradminFirebaseUser>(
      (user) {
        currentUser = VoteradminFirebaseUser(user);
        return currentUser!;
      },
    );
