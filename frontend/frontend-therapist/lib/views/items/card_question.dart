part of 'items_files.dart';

class CardQuesion extends StatelessWidget {
  final dynamic question;
  CardQuesion({@required this.question});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.COLOR_PRIMARY_LIGHT,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(question['question'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.COLOR_MAIN_TEXT,
                  fontFamily: 'Catamaran')),
          Container(
            alignment: Alignment.centerRight,
            child: Text((() {
              if (question['state']) {
                return "En proceso";
              } else {
                return "Finalizado";
              }
            })(),
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.COLOR_PRIMARY,
                  fontFamily: 'Catamaran',
                )),
          )
        ],
      ),
    );
  }
}
