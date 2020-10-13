
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService
{
  //Variable d'authentification firebase
  final FirebaseAuth _firebaseAuth;

  //Constructeur de la classe
  AuthenticationService(this._firebaseAuth);

  //Stream qui va lire l'actualité de l'utilisateur
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  //methode pour ce loger
  Future<String> signIn({String email, String password}) async{

    try{

      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed in";

    }on FirebaseAuthException catch(e){

      return e.toString();
    }

  }

  //Methode pour s'enregistrer
  Future<String> signUp({String email, String password}) async{
    try{

      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed in";

    }on FirebaseAuthException catch(e){

      return e.toString();
    }
  }

  //Methode pour se deloguer
  Future<void> signOut() async{

    try{

      await _firebaseAuth.signOut();

    }catch(e){
      return e.toString();
    }
  }

  //methode permettant de réinitialiser le password
  Future<void> resetpassword(String email) async {

    try{

      await _firebaseAuth.sendPasswordResetEmail(email: email) ;

    }catch(e){
      return e.toString();
    }
  }
}