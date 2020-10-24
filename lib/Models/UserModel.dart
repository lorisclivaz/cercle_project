import 'package:firebase_database/firebase_database.dart';

class UserModel
{
  //Variable de la classe
   String photoUrl;
   String firstName;
   String lastName;
   String email;
   String password;
   String sexe;
   bool isAdmin;

   //Constructeur de la classe
  UserModel(String photoUrl,String firstName, String lastName, String email, String password, String sexe, bool isAdmin)
  {
    this.photoUrl = photoUrl;
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.password = password;
    this.sexe = sexe;
    this.isAdmin = isAdmin;

  }

  UserModel.fromSnapshot(DataSnapshot snapshot)
  {
    this.photoUrl = snapshot.value["photoUrl"];
    this.firstName = snapshot.value["firstName"];
    this.lastName = snapshot.value["lastName"];
    this.email = snapshot.value["email"];
    this.password = snapshot.value["password"];
    this.sexe = snapshot.value["sexe"];
    this.isAdmin = snapshot.value["isAdmin"];

  }

}