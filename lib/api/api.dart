import 'package:spotify/spotify.dart';

class ApiConstant{
  static const baseUrl = 'https://phish.in/api/v1';
  static const String clientId = 'be64e4f020f6465a84c129b62c520a2a';
  static const String clientSecret = 'f47ccaee873f462db178d7450283f18e';
}

class SpotifyCredentials{
  static final credentials = SpotifyApiCredentials(ApiConstant.clientId, ApiConstant.clientSecret);
  static final spotify = SpotifyApi(SpotifyCredentials.credentials);
}