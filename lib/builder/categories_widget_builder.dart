import 'package:webnox_assignment/all_imports.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: const CategoriesItemWidget(),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, LivingRoomFurnitureScreen.routeName);
              },
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}
