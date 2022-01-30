part of '../pages_files.dart';

class PageProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: AppBackground(
        title: "Progreso",
        content: Column(
          children: [
            SizedBox(
              height: size.height / 36,
            ),
            _status(context, size),
            SizedBox(
              height: size.height / 36,
            ),
            _description(context, size),
            _achievementTitle(),
            _achievement(context, size),
          ],
        ),
      ),
    );
  }

  Widget _status(context, size) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Estado:",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.COLOR_MAIN_TEXT,
                  fontFamily: 'Catamaran',
                  fontWeight: FontWeight.bold)),
          SizedBox(
            width: size.width / 30,
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.COLOR_PRIMARY,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Empezando",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Catamaran',
                    fontWeight: FontWeight.bold)),
          )
        ]);
  }

  Widget _description(context, size) {
    return Container(
      width: double.infinity,
      height: size.height / 4,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.COLOR_SECONDARY_LIGHT,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam purus justo, lobortis eget blandit dapibus, porta ac sem. Nunc cursus ligula in aliquet luctus. Nullam hendrerit vulputate metus a feugiat. Vivamus faucibus risus sed erat ornare rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontFamily: 'Catamaran')),
          ],
        ),
      ),
    );
  }

  Widget _achievementTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 25),
      child: Text("Logros:",
          style: TextStyle(
              fontSize: 20,
              color: AppColors.COLOR_MAIN_TEXT,
              fontFamily: 'Catamaran',
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _achievement(context, size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CardAchievement(image: "assets/svgs/ach1.svg"),
        CardAchievement(image: "assets/svgs/ach2.svg"),
        CardAchievement(image: "assets/svgs/ach3.svg"),
      ],
    );
  }
}
