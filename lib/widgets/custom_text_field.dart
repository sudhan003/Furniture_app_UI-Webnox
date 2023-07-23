import 'package:webnox_assignment/all_imports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.sizeOf(context).height;
    double sizeWidth = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.greyF5F5F5,
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search'),
              ),
            ),
          ),
        ),
        SizedBoxHelper.sizedBox_10,
        InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Image.asset(
            'assets/icons/filter_icon.png',
            height: sizeHeight * 0.06,
            width: sizeWidth * 0.07,
          ),
        )
      ],
    );
  }
}
