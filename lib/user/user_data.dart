class UserData {
  static final myUser = User(
    image: 'https://via.placeholder.com/150',
    name: 'Иван Иванов',
    phone: '+7 123 456 7890',
    email: 'ivan.ivanov@example.com',
  );
}

class User {
  String image;
  String name;
  String phone;
  String email;

  User({
    required this.image,
    required this.name,
    required this.phone,
    required this.email,
  });
}
