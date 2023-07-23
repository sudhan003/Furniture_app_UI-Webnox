import 'package:webnox_assignment/all_imports.dart';

class StateProvider extends ChangeNotifier {
  int onSelectedIndex = 0;

  setSelectedIndex(int value) {
    onSelectedIndex = value;
    notifyListeners();
  }

  int onSelected = 0;

  setContainerColor(int index) {
    onSelected = index;
    notifyListeners();
  }
}
