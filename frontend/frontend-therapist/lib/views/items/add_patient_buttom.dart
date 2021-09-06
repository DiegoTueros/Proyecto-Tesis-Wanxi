part of 'items_files.dart';

class AddPatientButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Agregar ",
                style: TextStyle(
                    fontFamily: "Comfortaa",
                    fontSize: 20,
                    color: AppColors.COLOR_PRIMARY),
              ),
              SvgPicture.asset(
                "assets/svgs/patient/icon_plus.svg",
                width: 25,
              )
            ],
          ),
          onTap: () {
            Navigator.pushReplacementNamed(
                context, AppConstants.PAGE_ADD_PATIENT);
          }),
    );
  }
}
