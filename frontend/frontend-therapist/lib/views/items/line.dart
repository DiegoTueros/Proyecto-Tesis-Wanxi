part of 'items_files.dart';

class Line extends StatelessWidget {
  final Size size;
  Line({@required this.size});
  @override
  Widget build(BuildContext context) {
    double margin = (size.width * (AppConstants.PROFILE_WIDTH - 1)) /
        (2 * AppConstants.PROFILE_WIDTH);
    return Container(
      margin: EdgeInsets.only(left: margin),
      alignment: Alignment.centerLeft,
      child: Container(
          alignment: Alignment.center,
          width: size.width / (AppConstants.PROFILE_WIDTH * 3),
          height: size.width / (AppConstants.PROFILE_WIDTH * 10),
          child: Container(
            width: size.width / (AppConstants.PROFILE_WIDTH * 35),
            height: size.width / (AppConstants.PROFILE_WIDTH * 10),
            decoration: BoxDecoration(
              color: AppColors.COLOR_PRIMARY,
            ),
          )),
    );
  }
}
