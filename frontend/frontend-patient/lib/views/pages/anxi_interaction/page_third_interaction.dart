part of '../pages_files.dart';

class PageThirdInteraction extends StatelessWidget {
  final String info;
  final String transition;

  PageThirdInteraction({@required this.info, @required this.transition});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ThirdInteractionBackground(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: size.height / 5,
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
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
