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


}