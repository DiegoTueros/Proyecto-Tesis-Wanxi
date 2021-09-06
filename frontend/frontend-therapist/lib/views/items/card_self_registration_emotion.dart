part of 'items_files.dart';

class CardSelfRegistrationEmotion extends StatelessWidget {
  final List<dynamic> emotion;
  CardSelfRegistrationEmotion({@required this.emotion});

  final _pageController =
      new PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          "Que emoción siento",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.COLOR_MAIN_TEXT,
              fontSize: 15,
              fontFamily: 'Comfortaa'),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: _screenSize.height * 0.1,
          child: PageView.builder(
              controller: _pageController,
              itemCount: emotion.length,
              itemBuilder: (context, i) => Container(
                    child: _card(context, emotion[i]),
                  )
              //children: _tarjetas( context ),
              ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget _card(BuildContext context, dynamic emotion) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.COLOR_MAIN_TEXT, width: 0.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${emotion['emotion']}",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.COLOR_MAIN_TEXT,
                fontFamily: 'Catamaran'),
          ),
          Text(
            "(${emotion['level'].toString()})",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.COLOR_MAIN_TEXT,
                fontFamily: 'Catamaran'),
          ),
        ],
      ),
    );
  }
}
