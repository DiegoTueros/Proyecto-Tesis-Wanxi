part of 'items_files.dart';

class CardActivities extends StatelessWidget {
  final String text;
  CardActivities({@required this.text});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4.8,
      width: size.height / 4.8,
      margin: EdgeInsets.all(15),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            color: AppColors.COLOR_PRIMARY_LIGHT,
            borderRadius: BorderRadius.circular(45)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.COLOR_PRIMARY,
                child: SvgPicture.asset(
                  "assets/svgs/cloud.svg",
                  width: 40,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontSize: 14,
                    fontFamily: "Comfortaa"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
