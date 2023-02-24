import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'SHOPIFY_KEY', obfuscate: true)
  static final shopifyApiKey = _Env.marketStackApiKey;
}
