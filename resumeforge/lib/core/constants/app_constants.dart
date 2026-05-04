/// Application-wide constants
class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'ResumeForge AI';
  static const String appVersion = '1.0.0';

  // Limits
  static const int maxResumesPerUser = 50;
  static const int maxVersionsPerResume = 20;
  static const int maxResumePages = 5;
  static const int maxCharacterCount = 10000;

  // Autosave
  static const Duration autosaveDelay = Duration(seconds: 2);

  // AI
  static const int maxAITokens = 2000;
  static const double aiTemperature = 0.7;

  // Export
  static const String defaultExportFileName = 'resume';
  static const List<String> supportedExportFormats = ['PDF', 'DOCX', 'TXT'];

  // Storage Keys
  static const String storageKeyDrafts = 'resume_drafts';
  static const String storageKeyUser = 'user_data';
  static const String storageKeyTheme = 'theme_mode';
}
