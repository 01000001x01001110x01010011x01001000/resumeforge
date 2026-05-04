/// Common validation rules
class Validators {
  Validators._();

  /// Validate email
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  /// Validate password
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }

  /// Validate required field
  static String? required(String? value, {String? fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return '${fieldName ?? "This field"} is required';
    }
    return null;
  }

  /// Validate phone number
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Optional field
    }

    final phoneRegex = RegExp(r'^\+?[\d\s\-\(\)]+$');

    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  /// Validate URL
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Optional field
    }

    final urlRegex = RegExp(
      r'^https?://[^\s/$.?#].[^\s]*$',
      caseSensitive: false,
    );

    if (!urlRegex.hasMatch(value)) {
      return 'Please enter a valid URL';
    }

    return null;
  }

  /// Validate LinkedIn URL
  static String? linkedInUrl(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Optional field
    }

    if (!value.contains('linkedin.com')) {
      return 'Please enter a valid LinkedIn URL';
    }

    return url(value);
  }

  /// Validate GitHub URL
  static String? githubUrl(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Optional field
    }

    if (!value.contains('github.com')) {
      return 'Please enter a valid GitHub URL';
    }

    return url(value);
  }

  /// Validate min length
  static String? minLength(String? value, int min, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value.length < min) {
      return '${fieldName ?? "This field"} must be at least $min characters';
    }

    return null;
  }

  /// Validate max length
  static String? maxLength(String? value, int max, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value.length > max) {
      return '${fieldName ?? "This field"} must be at most $max characters';
    }

    return null;
  }

  /// Validate date is not in future
  static String? notFutureDate(DateTime? value, {String? fieldName}) {
    if (value == null) {
      return null;
    }

    if (value.isAfter(DateTime.now())) {
      return '${fieldName ?? "Date"} cannot be in the future';
    }

    return null;
  }

  /// Validate end date is after start date
  static String? endDateAfterStartDate(DateTime? endDate, DateTime? startDate) {
    if (endDate == null || startDate == null) {
      return null;
    }

    if (endDate.isBefore(startDate)) {
      return 'End date must be after start date';
    }

    return null;
  }
}
