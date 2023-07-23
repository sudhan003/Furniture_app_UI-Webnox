import 'package:webnox_assignment/all_imports.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset(
                'assets/categories_testing_image.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBoxHelper.sizedBox10,
          Text(
            'Living Room furniture',
            style: AppStyles.black13Bold,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
    ;
  }
}
