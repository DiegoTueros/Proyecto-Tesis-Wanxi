part of 'items_files.dart';

class CardSelfRegistration extends StatelessWidget {
  final dynamic selfRegistration;
  CardSelfRegistration({@required this.selfRegistration});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 6.5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.COLOR_PRIMARY_LIGHT,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Container(
                width: size.height / 10,
                height: size.height / 10,
                decoration: BoxDecoration(
                  color: AppColors.COLOR_PRIMARY,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("24 JUL",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Oswald')),
                )),
          ),
          Flexible(
            flex: 4,
            child: Text(selfRegistration['situation'],
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.COLOR_PRIMARY,
                    fontFamily: 'Catamaran')),
          ),
        ],
      ),
    );
  }
}
