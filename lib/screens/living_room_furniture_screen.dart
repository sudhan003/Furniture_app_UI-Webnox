import 'package:webnox_assignment/all_imports.dart';

class LivingRoomFurnitureScreen extends StatelessWidget {
  static String routeName = '/livingRoomFurnitureScreen';

  const LivingRoomFurnitureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, HomeScreen.routeName);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  Text(
                    'Living Room Furniture',
                    style: AppStyles.black20Bold,
                  ),
                ],
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
              const FurnitureTypeWidget(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, right: 20.0, left: 20.0),
                  child: FurnitureWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
