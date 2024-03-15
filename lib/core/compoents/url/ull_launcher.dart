
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> launchURL(String url) async {
    Uri uri = Uri.parse(url.replaceAll(" ", ""));
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
