part of 'items_files.dart';

class CardProfile extends StatelessWidget {
  final String name;
  final Size size;
  final String svg;
  final int hero;
  CardProfile(
      {@required this.name,
      @required this.size,
      @required this.svg,
      @required this.hero});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
          height: size.width / AppConstants.PROFILE_WIDTH,
          width: size.width / AppConstants.PROFILE_WIDTH,
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: AppColors.COLOR_PRIMARY,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: hero,
                child: SvgPicture.asset(
                  svg,
                  width: (size.width / AppConstants.PROFILE_WIDTH) * (3 / 5),
                ),
              ),
            ],
          ))),
    );
  }
}
