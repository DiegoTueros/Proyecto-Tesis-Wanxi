part of 'items_files.dart';

class SaveQuestionButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 30,
            maxWidth: 150,
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: AppColors.COLOR_PRIMARY,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            "Agregar ",
            style: TextStyle(
                fontFamily: "Comfortaa", fontSize: 18, color: Colors.white),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
