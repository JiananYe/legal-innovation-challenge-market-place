import '../models/service.dart';

class SearchService {
  static List<Service> searchServices({
    required List<Service> services,
    String? query,
    List<String>? categories,
    double? minPrice,
    double? maxPrice,
    double? minRating,
  }) {
    return services.where((service) {
      // Search query filter
      if (query != null && query.isNotEmpty) {
        final searchQuery = query.toLowerCase();
        final matchesQuery = service.title.toLowerCase().contains(searchQuery) ||
            service.description.toLowerCase().contains(searchQuery) ||
            service.partnerName.toLowerCase().contains(searchQuery);
        if (!matchesQuery) return false;
      }

      // Categories filter
      if (categories != null && categories.isNotEmpty) {
        final hasMatchingCategory = service.categories
            .any((category) => categories.contains(category));
        if (!hasMatchingCategory) return false;
      }

      // Price range filter
      if (minPrice != null && service.price < minPrice) return false;
      if (maxPrice != null && service.price > maxPrice) return false;

      // Rating filter
      if (minRating != null && service.rating < minRating) return false;

      return true;
    }).toList();
  }

  static List<String> getAllCategories(List<Service> services) {
    final categories = <String>{};
    for (final service in services) {
      categories.addAll(service.categories);
    }
    return categories.toList()..sort();
  }

  static Map<String, int> getCategoryCounts(List<Service> services) {
    final counts = <String, int>{};
    for (final service in services) {
      for (final category in service.categories) {
        counts[category] = (counts[category] ?? 0) + 1;
      }
    }
    return counts;
  }
} 