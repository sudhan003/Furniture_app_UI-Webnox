import 'package:webnox_assignment/all_imports.dart';

class FurnitureWidget extends StatelessWidget {
  const FurnitureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        mainAxisExtent: 240,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(color: AppColors.greyF5F5F5),
          child: const FurnitureDetailWidget(),
        );
      },
    );
  }
}
