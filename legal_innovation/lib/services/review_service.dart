import '../models/review.dart';

class ReviewService {
  // TODO: Replace with actual API calls
  static Future<List<Review>> getServiceReviews(String serviceId) async {
    // Simulated API delay
    await Future.delayed(const Duration(milliseconds: 500));

    // Mock data
    return [
      Review(
        id: '1',
        serviceId: serviceId,
        userId: 'user1',
        userName: 'John Doe',
        userAvatarUrl: 'https://picsum.photos/200',
        rating: 4.5,
        comment: 'Great service! The legal consultation was very helpful and professional.',
        createdAt: DateTime.now().subtract(const Duration(days: 2)),
      ),
      Review(
        id: '2',
        serviceId: serviceId,
        userId: 'user2',
        userName: 'Jane Smith',
        userAvatarUrl: 'https://picsum.photos/201',
        rating: 5.0,
        comment: 'Excellent experience. The lawyer was knowledgeable and provided clear guidance.',
        createdAt: DateTime.now().subtract(const Duration(days: 5)),
        images: [
          'https://picsum.photos/300',
          'https://picsum.photos/301',
        ],
      ),
    ];
  }

  static Future<Review> addReview({
    required String serviceId,
    required String userId,
    required String userName,
    String? userAvatarUrl,
    required double rating,
    required String comment,
    List<String>? images,
  }) async {
    // TODO: Replace with actual API call
    await Future.delayed(const Duration(milliseconds: 500));

    return Review(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      serviceId: serviceId,
      userId: userId,
      userName: userName,
      userAvatarUrl: userAvatarUrl,
      rating: rating,
      comment: comment,
      createdAt: DateTime.now(),
      images: images,
    );
  }

  static Future<void> deleteReview(String reviewId) async {
    // TODO: Replace with actual API call
    await Future.delayed(const Duration(milliseconds: 500));
  }

  static Future<void> updateReview({
    required String reviewId,
    required double rating,
    required String comment,
    List<String>? images,
  }) async {
    // TODO: Replace with actual API call
    await Future.delayed(const Duration(milliseconds: 500));
  }
} 