part of '../pages_files.dart';

class PageFourthInteraction extends StatelessWidget {
  final String info;
  final String title;
  final String transition;

  PageFourthInteraction(
      {@required this.info, @required this.transition, @required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: FourthInteractionBackground(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(title,
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColors.COLOR_MAIN_TEXT,
                      fontFamily: 'Catamaran')),
            ),
            Container(
              width: double.infinity,
              height: size.height / 6,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      info,
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.COLOR_MAIN_TEXT,
                          fontFamily: 'Catamaran'),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(transition,
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.COLOR_MAIN_TEXT,
                            fontFamily: 'Catamaran',
                            fontWeight: FontWeight.bold)),
                    SvgPicture.asset(
                      "assets/svgs/right_arrow.svg",
                      width: 10,
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, AppConstants.PAGE_HOME);
              },
            ),
          ],
        ),
      ),
    );
  }
}
