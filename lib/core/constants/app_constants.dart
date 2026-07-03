class AppConstants {
  AppConstants._();

  // API
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://localhost:8000/api/v1',
  );
  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Storage keys
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String userIdKey = 'user_id';
  static const String planTypeKey = 'plan_type';

  // AI limits per plan
  static const Map<String, int> aiDailyLimits = {
    'free': 3,
    'premium': -1, // unlimited
    'pro': -1,
  };

  // Subscription plans
  static const String planFree = 'free';
  static const String planPremium = 'premium';
  static const String planPro = 'pro';

  // Apple/Google product IDs
  static const String premiumMonthlyApple = 'com.antifinance.premium.monthly';
  static const String proMonthlyApple = 'com.antifinance.pro.monthly';
  static const String premiumMonthlyAndroid = 'premium_monthly';
  static const String proMonthlyAndroid = 'pro_monthly';

  // Gamification levels
  static const List<String> levels = [
    'Financial Chaos',
    'Survivor',
    'Stable',
    'Disciplined',
    'Wealth Builder',
    'Capital Strategist',
  ];

  static const List<int> levelXpThresholds = [0, 100, 300, 600, 1000, 1500];

  // AI report types
  static const String reportDaily = 'daily';
  static const String reportWeekly = 'weekly';
  static const String reportMonthly = 'monthly';
  static const String reportHardTruth = 'hard_truth';

  // Emotion options
  static const List<String> emotions = [
    'calm',
    'happy',
    'stressed',
    'anxious',
    'bored',
    'sad',
    'excited',
    'guilty',
  ];

  // Transaction categories
  static const List<String> categories = [
    'food',
    'transport',
    'entertainment',
    'shopping',
    'health',
    'education',
    'subscriptions',
    'bills',
    'savings',
    'other',
  ];
}
