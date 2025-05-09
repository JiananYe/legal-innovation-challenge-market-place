class Service {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String partnerId;
  final String partnerName;
  final List<String> categories;
  final double rating;
  final int reviewCount;
  final bool isFeatured;

  Service({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.partnerId,
    required this.partnerName,
    required this.categories,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.isFeatured = false,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      partnerId: json['partnerId'] as String,
      partnerName: json['partnerName'] as String,
      categories: List<String>.from(json['categories'] as List),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: json['reviewCount'] as int? ?? 0,
      isFeatured: json['isFeatured'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'partnerId': partnerId,
      'partnerName': partnerName,
      'categories': categories,
      'rating': rating,
      'reviewCount': reviewCount,
      'isFeatured': isFeatured,
    };
  }
} 