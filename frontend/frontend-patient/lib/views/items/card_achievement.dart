part of 'items_files.dart';

class CardAchievement extends StatelessWidget {
  final String image;
  CardAchievement({@required this.image});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 12,
      width: size.height / 12,
      margin: EdgeInsets.all(28),
      child: Container(
        padding: EdgeInsets.all(7),
        height: 180,
        decoration: BoxDecoration(
            color: AppColors.COLOR_PRIMARY_LIGHT,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.COLOR_PRIMARY)),
        child: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}
