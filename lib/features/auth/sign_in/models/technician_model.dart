class TechnicianModel {
  final String id;
  final String specialtyId;
  final double latitude;
  final double longitude;
  final double rating;
  final bool isAvailable;
  final String fullName;
  final String image;
  final String phoneNumber;
  final String email;
  final double? distance;

  const TechnicianModel({
    required this.id,
    required this.specialtyId,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.isAvailable,
    required this.fullName,
    required this.image,
    required this.phoneNumber,
    required this.email,
    this.distance,
  });

  factory TechnicianModel.fromJson(Map<String, dynamic> json) {
    final user = json['users'] ?? {};
    return TechnicianModel(
      id: json['id'] ?? '',
      specialtyId: json['specialty_id'] ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      isAvailable: json['is_available'] ?? false,
      fullName: user['full_name'] ?? '',
      image: user['image'] ?? '',
      phoneNumber: user['phone_number'] ?? '',
      email: user['email'] ?? '',
      distance: json['distance'] as double?,
    );
  }

  get distanceFromYou => null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'specialty_id': specialtyId,
        'latitude': latitude,
        'longitude': longitude,
        'rating': rating,
        "distance": distance,
        'is_available': isAvailable,
        'users': {
          'full_name': fullName,
          'image': image,
          'phone_number': phoneNumber,
          'email': email,
        },
        if (distance != null) 'distance': distance,
      };

  TechnicianModel copyWith({
    String? id,
    String? specialtyId,
    double? latitude,
    double? longitude,
    double? rating,
    bool? isAvailable,
    String? fullName,
    String? image,
    String? phoneNumber,
    String? email,
    double? distance,
  }) {
    return TechnicianModel(
      id: id ?? this.id,
      specialtyId: specialtyId ?? this.specialtyId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      rating: rating ?? this.rating,
      isAvailable: isAvailable ?? this.isAvailable,
      fullName: fullName ?? this.fullName,
      image: image ?? this.image,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      distance: distance ?? this.distance,
    );
  }

  @override
  String toString() {
    return 'TechnicianModel(id: $id, fullName: $fullName, specialtyId: $specialtyId, '
        'latitude: $latitude, longitude: $longitude, rating: $rating, '
        'isAvailable: $isAvailable, distance: $distance)';
  }
}
