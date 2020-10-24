import 'package:firebase_database/firebase_database.dart';


class Vetement
{
  //Variables de la classe
  String urlPhoto;
  String genre;
  String taille;
  String couleur;
  String description;
  String type;
  double prix;

  //Constructeur de la classe
  Vetement(String urlPhoto,String genre, String taille, String couleur, String description, String type, double prix)
  {
    this.genre = genre;
    this.taille = taille;
    this.couleur = couleur;
    this.description = description;
    this.type = type;
    this.prix = prix;
  }

  Vetement.fromSnapshot(DataSnapshot snapshot)
  {
    this.urlPhoto = snapshot.value["urlPhoto"];
    this.genre = snapshot.value["genre"];
    this.taille = snapshot.value["taille"];
    this.couleur = snapshot.value["couleur"];
    this.description = snapshot.value["description"];
    this.type = snapshot.value["type"];
    this.prix = snapshot.value["prix"];
  }



}