part of 'items_files.dart';

class RoundOption extends StatelessWidget {
  final String option;
  final Size size;
  final String svg;
  RoundOption({@required this.option, @required this.size, @required this.svg});
  @override
  Widget build(BuildContext context) {
    double margin = (size.width * (AppConstants.PROFILE_WIDTH - 1)) /
        (2 * AppConstants.PROFILE_WIDTH);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: margin),
          alignment: Alignment.centerLeft,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.COLOR_MAIN_TEXT,
              borderRadius: BorderRadius.circular(500),
            ),
            width: size.width / (AppConstants.PROFILE_WIDTH * 3),
            height: size.width / (AppConstants.PROFILE_WIDTH * 3),
            child: Container(
              width: size.width / (AppConstants.PROFILE_WIDTH * 6),
              height: size.width / (AppConstants.PROFILE_WIDTH * 6),
              child: SvgPicture.asset(
                svg,
                width: 12,
                height: 12,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: size.width / 15),
          child: AutoSizeText(
            option,
            style: TextStyle(
                color: AppColors.COLOR_MAIN_TEXT,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
