import 'package:webnox_assignment/all_imports.dart';

class OffersItemWidget extends StatelessWidget {
  const OffersItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.3,
        width: MediaQuery.sizeOf(context).width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.greyF5F5F5,
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
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
              const Text('lorem ipsum'),
            ],
          ),
        ),
      ),
    );
  }
}
