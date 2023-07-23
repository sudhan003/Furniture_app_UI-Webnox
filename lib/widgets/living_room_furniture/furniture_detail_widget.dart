import 'package:webnox_assignment/all_imports.dart';

class FurnitureDetailWidget extends StatelessWidget {
  const FurnitureDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            right: 10.0,
            left: 10.0,
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 130,
                width: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/offers_testing_image.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Positioned(
                        top: 10, right: 10, child: CustomFavouriteIconWidget()),
                  ],
                ),
              ),
              SizedBoxHelper.sizedBox5,
              Text(
                'Arm chair',
                style: AppStyles.black20Bold,
              ),
              SizedBoxHelper.sizedBox5,
              Text(
                'piece uphoistered sectional',
                style: AppStyles.black54_10,
              ),
              SizedBoxHelper.sizedBox10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        " \$300",
                        style: AppStyles.black20Bold,
                      ),
                      const Text(
                        "\$400",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            decorationColor: Colors.grey,
                            decorationThickness: 2,
                            decoration: TextDecoration.lineThrough,
                            decorationStyle: TextDecorationStyle.solid),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.yellowFEC321,
                      ),
                      Text(
                        '4.9',
                        style: AppStyles.black13Bold,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
