class UserModel{
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;

  UserModel (
    {required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.avatar
    });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
  UserModel (
    id: json['id'],
    firstname: json['first_name'] ,
    lastname: json['last_name'],
    email: json['email'] ,
    avatar: json['avatar']
    );

}
