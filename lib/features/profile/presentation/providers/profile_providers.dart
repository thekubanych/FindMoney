import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/network/dio_client.dart';

part 'profile_providers.g.dart';

const _kHardTruthKey = 'hard_truth_mode';
const _kBiometricKey = 'biometric_lock';
const _kNotificationsKey = 'notifications_enabled';
const _kAiPersonalityKey = 'ai_personality';

@riverpod
Future<SharedPreferences> sharedPrefs(Ref ref) => SharedPreferences.getInstance();

// ─── Hard truth mode ──────────────────────────────────────────────────────────

@riverpod
class HardTruthModeNotifier extends _$HardTruthModeNotifier {
  @override
  Future<bool> build() async {
    final prefs = await ref.watch(sharedPrefsProvider.future);
    return prefs.getBool(_kHardTruthKey) ?? false;
  }

  Future<void> toggle(bool value) async {
    final prefs = await ref.read(sharedPrefsProvider.future);
    await prefs.setBool(_kHardTruthKey, value);
    state = AsyncData(value);
  }
}

// ─── Biometric lock ───────────────────────────────────────────────────────────

@riverpod
class BiometricLockNotifier extends _$BiometricLockNotifier {
  @override
  Future<bool> build() async {
    final prefs = await ref.watch(sharedPrefsProvider.future);
    return prefs.getBool(_kBiometricKey) ?? false;
  }

  Future<void> toggle(bool value) async {
    final prefs = await ref.read(sharedPrefsProvider.future);
    await prefs.setBool(_kBiometricKey, value);
    state = AsyncData(value);
  }
}

// ─── Notifications ────────────────────────────────────────────────────────────

@riverpod
class NotificationsEnabledNotifier extends _$NotificationsEnabledNotifier {
  @override
  Future<bool> build() async {
    final prefs = await ref.watch(sharedPrefsProvider.future);
    return prefs.getBool(_kNotificationsKey) ?? true;
  }

  Future<void> toggle(bool value) async {
    final prefs = await ref.read(sharedPrefsProvider.future);
    await prefs.setBool(_kNotificationsKey, value);
    state = AsyncData(value);
  }
}

// ─── AI personality ───────────────────────────────────────────────────────────

enum AiPersonality { friendly, balanced, brutal }

@riverpod
class AiPersonalityNotifier extends _$AiPersonalityNotifier {
  @override
  Future<AiPersonality> build() async {
    final prefs = await ref.watch(sharedPrefsProvider.future);
    final raw = prefs.getString(_kAiPersonalityKey) ?? 'balanced';
    return AiPersonality.values.firstWhere(
      (p) => p.name == raw,
      orElse: () => AiPersonality.balanced,
    );
  }

  Future<void> set(AiPersonality personality) async {
    final prefs = await ref.read(sharedPrefsProvider.future);
    await prefs.setString(_kAiPersonalityKey, personality.name);
    state = AsyncData(personality);
  }
}
