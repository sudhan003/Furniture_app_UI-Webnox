import '../all_imports.dart';

class CustomFavouriteIconWidget extends StatelessWidget {
  const CustomFavouriteIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StateProvider>(builder: (context, model, _) {
      return LikeButton(
        size: 40,
        likeBuilder: (onTapped) {
          return onTapped
              ? Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(244, 244, 244, 0.4),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Text(''),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      right: 6,
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.redFF3B30,
                        size: 18,
                      ),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Positioned(
                      top: 0.5,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(244, 244, 244, 0.4),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Text(''),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      right: 6,
                      child: Icon(
                        Icons.favorite_border,
                        color: AppColors.black,
                        size: 18,
                      ),
                    ),
                  ],
                );
        },
        animationDuration: Duration(seconds: 0),
      );
    });
  }
}
