import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot> get userStream {
    User? user = auth.currentUser;
    if (user != null) {
      return firestore.collection('user').doc(user.uid).snapshots();
    } else {
      throw Exception("No user signed in");
    }
  }

  void logOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
