class Partner {
  final String id;
  final String name;
  final String description;
  final String? logoUrl;
  final String? website;
  final String? email;
  final String? phone;
  final String? address;
  final List<String> specialties;
  final double rating;
  final int reviewCount;
  final int completedServices;
  final DateTime joinedDate;
  final bool isVerified;
  final List<String> serviceIds;

  Partner({
    required this.id,
    required this.name,
    required this.description,
    this.logoUrl,
    this.website,
    this.email,
    this.phone,
    this.address,
    this.specialties = const [],
    this.rating = 0.0,
    this.reviewCount = 0,
    this.completedServices = 0,
    required this.joinedDate,
    this.isVerified = false,
    this.serviceIds = const [],
  });

  factory Partner.fromJson(Map<String, dynamic> json) {
    return Partner(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      logoUrl: json['logoUrl'] as String?,
      website: json['website'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      specialties: List<String>.from(json['specialties'] as List? ?? []),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: json['reviewCount'] as int? ?? 0,
      completedServices: json['completedServices'] as int? ?? 0,
      joinedDate: DateTime.parse(json['joinedDate'] as String),
      isVerified: json['isVerified'] as bool? ?? false,
      serviceIds: List<String>.from(json['serviceIds'] as List? ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'logoUrl': logoUrl,
      'website': website,
      'email': email,
      'phone': phone,
      'address': address,
      'specialties': specialties,
      'rating': rating,
      'reviewCount': reviewCount,
      'completedServices': completedServices,
      'joinedDate': joinedDate.toIso8601String(),
      'isVerified': isVerified,
      'serviceIds': serviceIds,
    };
  }
} 