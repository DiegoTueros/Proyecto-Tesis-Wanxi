part of 'items_files.dart';

class CardSelfRegistrationInfo extends StatelessWidget {
  final String title;
  final String information;
  CardSelfRegistrationInfo({@required this.title, @required this.information});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.COLOR_MAIN_TEXT,
                fontSize: 15,
                fontFamily: 'Comfortaa'),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.COLOR_MAIN_TEXT, width: 0.8),
            ),
            child: Text(information,
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontFamily: 'Catamaran')))
      ],
    );
  }
}
