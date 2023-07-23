import 'package:webnox_assignment/all_imports.dart';

class FurnitureTypeWidget extends StatelessWidget {
  const FurnitureTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.05,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, top: 8.0, right: 5.0, bottom: 8),
              child: Consumer<StateProvider>(builder: (context, model, _) {
                return InkWell(
                  onTap: () {
                    model.setContainerColor(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: model.onSelected == index
                          ? AppColors.orangeD87634
                          : AppColors.greyD6D6D6,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Center(
                        child: Text(
                          'chairs & Seatings',
                          style: TextStyle(
                              color: model.onSelected == index
                                  ? AppColors.white
                                  : AppColors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
