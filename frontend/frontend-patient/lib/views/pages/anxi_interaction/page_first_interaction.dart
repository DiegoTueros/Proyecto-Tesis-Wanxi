part of '../pages_files.dart';

class PageFirstInteraction extends StatelessWidget {
  final String title;
  final String info1;
  final String info2;

  PageFirstInteraction(
      {@required this.title, @required this.info1, @required this.info2});

  static const TextStyle description = TextStyle(
      fontSize: 20, color: AppColors.COLOR_MAIN_TEXT, fontFamily: 'Catamaran');
  static const TextStyle name = TextStyle(
      fontSize: 25,
      color: AppColors.COLOR_MAIN_TEXT,
      fontFamily: 'Fredoka-one',
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: FirstInteractionBackground(
        content: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 45,
                      color: AppColors.COLOR_MAIN_TEXT,
                      fontFamily: 'Catamaran')),
            ),
            Container(
              width: double.infinity,
              height: size.height / 5,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: info1, style: description),
                        TextSpan(text: " Anxi, ", style: name),
                        TextSpan(text: info2, style: description),
                      ]),
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
                    Text("Siguiente",
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
