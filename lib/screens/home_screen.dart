import 'package:webnox_assignment/all_imports.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBoxHelper.sizedBox10,
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/icons/location.png',
                            height: size.height * 0.03,
                            width: size.width * 0.05,
                          ),
                        ),
                        SizedBoxHelper.sizedBox_5,
                        Text(
                          'Gaza, Palestine',
                          style: AppStyles.black20Bold,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/icons/cart_icon.png",
                              height: 25,
                              width: 25,
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  color: Colors.white,
                                  child: Text(
                                    'o',
                                    style: AppStyles.green10W900,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBoxHelper.sizedBox_10,
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            const Icon(Icons.notifications_none_rounded),
                            Positioned(
                              right: 4,
                              top: 4,
                              child: Icon(
                                Icons.circle,
                                color: AppColors.redFF3B30,
                                size: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBoxHelper.sizedBox10,
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
                child: const CustomTextField(),
              ),
            ),
            SizedBoxHelper.sizedBox20,
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.specialOffers,
                    style: AppStyles.black20Bold,
                  ),
                  SizedBoxHelper.sizedBox10,
                  const SpecialOffersWidget(),
                  SizedBoxHelper.sizedBox20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.categories,
                        style: AppStyles.black20Bold,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          AppStrings.seeAll,
                          style: AppStyles.black54_15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBoxHelper.sizedBox5,

            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: CategoriesWidget(),
            ),
            SizedBoxHelper.sizedBox10,
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.offers,
                        style: AppStyles.black20Bold,
                      ),
                      Text(
                        AppStrings.seeAll,
                        style: AppStyles.black54_15,
                      ),
                    ],
                  ),
                  SizedBoxHelper.sizedBox5,
                  const OffersWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
