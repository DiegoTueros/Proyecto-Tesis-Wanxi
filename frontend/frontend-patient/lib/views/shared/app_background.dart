part of 'shared_files.dart';

class AppBackground extends StatelessWidget {
  final Widget content;
  final String title;

  AppBackground({@required this.content, @required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 100,
            left: 0,
            child: SvgPicture.asset("assets/svgs/small_half_cloud.svg",
                width: size.width / 3),
          ),
          Positioned(
            top: 20,
            right: 10,
            child: SvgPicture.asset("assets/svgs/small_cloud.svg",
                width: size.width / 5.5),
          ),
          Positioned(
            top: size.height / 12,
            right: 0,
            child: Container(
              width: size.width,
              height: size.height * 2.05 / 3,
              child: content,
            ),
          ),
          Positioned(
            bottom: -0.5,
            right: 0,
            child: SvgPicture.asset("assets/svgs/background_bottom.svg",
                width: size.width),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset("assets/images/help_buttom.png",
                width: size.width / 3),
          ),
          Positioned(
              top: 20,
              left: 20,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 40,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
