class UserModel {
  final String id;
  final String userName;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String image;
  final String role;
  final DateTime? createdAt;
  UserModel({
    required this.id,
    required this.userName,
    required this.fullName,
    required this.image,
    required this.phoneNumber,
    required this.email,
    required this.role,
    this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      userName: json['username'],
      fullName: json['full_name'],
      image: json['image'],
      phoneNumber: json['phone_number'],
      email: json['email'],
      role: json['role'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': userName,
        'full_name': fullName,
        'image': image,
        'phone_number': phoneNumber,
        'email': email,
        'role': role,
        'created_at': createdAt?.toIso8601String(),
      };
  toString() {
    return 'UserModel(id: $id, userName: $userName, fullName: $fullName, image: $image, phoneNumber: $phoneNumber, email: $email, role: $role)';
  }
}
