part of 'items_files.dart';

class CardInteraction extends StatelessWidget {
  final dynamic data;
  CardInteraction({@required this.data});
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
          Container(
            alignment: Alignment.centerLeft,
            child: Text(data['name'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontFamily: 'Catamaran')),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(data['created_at'],
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
