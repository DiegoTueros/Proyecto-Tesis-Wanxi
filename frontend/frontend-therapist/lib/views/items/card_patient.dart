part of 'items_files.dart';

class CardPatient extends StatelessWidget {
  final dynamic information;
  CardPatient({@required this.information});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 6.5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: AppColors.COLOR_PRIMARY,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, blurRadius: 4, offset: Offset(0, 4))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              flex: 1,
              child: Container(
                child: Hero(
                  tag: information['id'],
                  child: SvgPicture.asset(information['svg']),
                ),
              )),
          Flexible(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Flexible(
                  child: Text(
                    '${information['name']} ${information['lastname']}',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: AppColors.COLOR_MAIN_TEXT2,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Flexible(
                  child: Text(
                    '${information['age']} años.',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: AppColors.COLOR_MAIN_TEXT2,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
