part of 'items_files.dart';

class AddQuestionButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 30,
          maxWidth: 150,
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.COLOR_PRIMARY,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Agregar ",
              style: TextStyle(
                  fontFamily: "Comfortaa", fontSize: 18, color: Colors.white),
            ),
            SvgPicture.asset(
              "assets/svgs/patient/icon_plus.svg",
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
