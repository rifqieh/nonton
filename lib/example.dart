void main() {
//    final rifqi = UserModel(
//     name: 'Rifqi Eka',
//     email: 'ekarifqi1@gmail.com',
//     id: 1,
//     birthDate: DateTime(2000, 5,11),
//    );

  final rawJson = {
    'name': 'Rifqi Eka',
    'email': 'ekarifqi1@gmail.com',
    'id': 1,
    'birthDate': '2000-05-11',
  };

  print(rawJson);

  final rifqi = UserModel.fromJson(rawJson);

//   print(rifqi.email);
}

class UserModel {
  final String name;
  final String email;
  final int id;
  final DateTime birthDate;

  UserModel({
    required this.name,
    required this.email,
    required this.id,
    required this.birthDate,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'] ?? '',
        email: json['email'] ?? '',
        id: json['id'] ?? 0,
        birthDate: DateTime.parse(json['birtDate']) ?? DateTime.now(),
      );
}
