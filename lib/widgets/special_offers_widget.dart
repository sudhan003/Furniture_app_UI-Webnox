import 'package:webnox_assignment/all_imports.dart';

class SpecialOffersWidget extends StatelessWidget {
  const SpecialOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.greyF5F5F5,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              // width: MediaQuery.sizeOf(context).width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '20%',
                    style: AppStyles.orange25W900,
                  ),
                  SizedBoxHelper.sizedBox10,
                  Text(
                    AppStrings.specialDiscount,
                    style: AppStyles.black18Bold,
                  ),
                  SizedBoxHelper.sizedBox10,
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: Text(
                      'Get the special price for all products along this month',
                      style: AppStyles.black10,
                    ),
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/testing_image.jpg',
                width: MediaQuery.sizeOf(context).width * 0.42,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
