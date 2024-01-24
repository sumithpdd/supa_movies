import 'package:supabase_flutter/supabase_flutter.dart';

const String annonKeyKey = "ANNON_KEY";
const String projectUrlKey = "SUPABASE_URL";

class InitialiseSupabase {
  static String annonKey = const String.fromEnvironment(annonKeyKey);
  static String url = const String.fromEnvironment(projectUrlKey);
  InitialiseSupabase._() {
    if (annonKey.isEmpty || url.isEmpty) {
      throw AssertionError('Config file not properly set');
    }
  }

  static Future init() async {
    InitialiseSupabase._();
    await Supabase.initialize(
      anonKey: annonKey,
      url: url,
    );
  }
}

final supabase = Supabase.instance.client;
