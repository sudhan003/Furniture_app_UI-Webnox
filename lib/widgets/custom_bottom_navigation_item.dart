import 'package:webnox_assignment/all_imports.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Consumer<StateProvider>(builder: (context, model, _) {
        return BottomNavigationBar(
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.black,
          showUnselectedLabels: true,
          selectedLabelStyle: AppStyles.black54_10,
          unselectedLabelStyle: AppStyles.black54_10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColors.greyD6D6D6,
              icon: model.onSelectedIndex == 0
                  ? Image.asset(
                      'assets/icons/home_ontap_icon.png',
                      height: 30,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      size: 30,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: model.onSelectedIndex == 1
                  ? Image.asset(
                      'assets/icons/my_order_ontap_icon.png',
                      height: 30,
                      width: 26,
                    )
                  : Image.asset(
                      'assets/icons/my_order_icon.png',
                      height: 30,
                      width: 26,
                    ),
              label: 'My Order',
            ),
            BottomNavigationBarItem(
              icon: model.onSelectedIndex == 2
                  ? Image.asset(
                      'assets/icons/my_favourite_ontap_icon.png',
                      height: 30,
                      width: 25,
                    )
                  : Image.asset(
                      'assets/icons/my_favourite_icon.png',
                      height: 30,
                      width: 25,
                    ),
              label: 'My Favorite',
            ),
            BottomNavigationBarItem(
              icon: model.onSelectedIndex == 3
                  ? Image.asset(
                      'assets/icons/profile_ontap_icon.png',
                      height: 32,
                    )
                  : Image.asset(
                      'assets/icons/profile_icon.png',
                      height: 32,
                    ),
              label: 'Profile',
            ),
          ],
          currentIndex: model.onSelectedIndex,
          onTap: model.setSelectedIndex,
        );
      }),
    );
  }
}
