import 'package:webnox_assignment/all_imports.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: OffersItemWidget(),
          );
        },
        itemCount: 2,
      ),
    );
  }
}
