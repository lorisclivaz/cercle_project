import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/scheduler.dart';

class ServiceDB
{

  //Methode qui va créer l'utilisateur
  Future<String> createUser(String photoUrl, String firstName, String lastName, String email, String password, String sexe, bool isAdmin) async{

    var user = <String,dynamic>{
      'photoUrl': photoUrl,
      'firstname': firstName,
      'lastname': lastName,
      'email': email,
      'password': password,
      'sexe': sexe,
      'isAdmin': isAdmin
    };

    DatabaseReference reference = FirebaseDatabase.instance.reference().child('Users').push();
    reference.set(user);

    print('Insertion User successFull');
  }

  //Methode qui va update le user
  void updateUser(String key, String photoUrl, String firstName, String lastName, String email, String password, String sexe, bool isAdmin){
    final ref = FirebaseDatabase.instance.reference().child('Users');

    ref.child(key).update(
      {
        'photoUrl': photoUrl,
        'firstname': firstName,
        'lastname': lastName,
        'email': email,
        'password': password,
        'sexe': sexe,
        'isAdmin': isAdmin
      }
    );

    print('Update Successfull');
  }


  //Methode qui va créer le vêtement
  Future<String> createVetement(String genre, String taille, String couleur, String description, String type, double prix){

    var vetement = <String,dynamic>{
      'genre': genre,
      'taille': taille,
      'couleur': couleur,
      'description': description,
      'type': type,
      'prix': prix
    };

    DatabaseReference reference = FirebaseDatabase.instance.reference().child('Vetements').push();
    reference.set(vetement);

    print('Insertion vetement successFull');
  }



}