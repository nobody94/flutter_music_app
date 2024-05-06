import 'package:first_app/api/key.dart';
import 'package:spotify/spotify.dart';

class SpotifyCredentials{
  static final credentials = SpotifyApiCredentials(ApiKey.clientId, ApiKey.clientSecret);
  static final spotify = SpotifyApi(SpotifyCredentials.credentials);
}