class User {
  final String id;
  final String name;
  final String email;
  final String? avatarUrl;
  final String? company;
  final String? position;
  final List<String> purchasedServices;
  final List<String> favoriteServices;
  final DateTime joinedDate;
  final bool isVerified;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.avatarUrl,
    this.company,
    this.position,
    this.purchasedServices = const [],
    this.favoriteServices = const [],
    required this.joinedDate,
    this.isVerified = false,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      company: json['company'] as String?,
      position: json['position'] as String?,
      purchasedServices: List<String>.from(json['purchasedServices'] as List? ?? []),
      favoriteServices: List<String>.from(json['favoriteServices'] as List? ?? []),
      joinedDate: DateTime.parse(json['joinedDate'] as String),
      isVerified: json['isVerified'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatarUrl': avatarUrl,
      'company': company,
      'position': position,
      'purchasedServices': purchasedServices,
      'favoriteServices': favoriteServices,
      'joinedDate': joinedDate.toIso8601String(),
      'isVerified': isVerified,
    };
  }
} 