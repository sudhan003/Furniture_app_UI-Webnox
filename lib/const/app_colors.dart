import 'package:webnox_assignment/all_imports.dart';

class AppColors {
  //WHITE
  static Color white = hexColor('FFFFFF');

  // BLACK
  static Color black = Colors.black;
  static Color black54 = Colors.black54;

  // GREY
  static Color greyF5F5F5 = hexColor('F5F5F5');
  static Color grey = Colors.grey;
  static Color grey100 = Colors.grey.shade100;
  static Color grey300 = Colors.grey.shade100;
  static Color greyD6D6D6 = hexColor('D6D6D6');

  // ORANGE
  static Color orangeD25705 = hexColor('D25705');
  static Color orangeD87634 = hexColor('D87634');

  // YELLOW
  static Color yellowFEC321 = hexColor('FEC321');

  // RED
  static Color redFF3B30 = hexColor('FF3B30');

  // GREEN
  static Color green11B448 = hexColor('11B448');

  static Color hexColor(String value) {
    return Color(int.parse('FF$value', radix: 16));
  }
}
