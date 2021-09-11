part of 'app_pages.dart';

abstract class Routes {
  static const INTITIAL = '/';
  static const HOME = '/home';
  static const EXPLORE = '/explore';
  static const ACTIVITY = '/activity';
  static const USER_PROFILE = '/userprofile';
  static const GALLERY = '/gllery';
  static const CALENDAR = '/calendar';

  static String homeExtra(ScrollController controller) => '$HOME/$controller';
}
