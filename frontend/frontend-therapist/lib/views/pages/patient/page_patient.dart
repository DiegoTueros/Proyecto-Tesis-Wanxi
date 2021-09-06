part of '../pages_files.dart';

List<String> optionsSvg = [
  "assets/svgs/patient/icon_user.svg",
  "assets/svgs/patient/icon_activity.svg",
  "assets/svgs/patient/icon_achievement.svg",
  "assets/svgs/patient/icon_challenge.svg"
];

class PagePatient extends StatelessWidget {
  final dynamic info;

  PagePatient({@required this.info});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: AppBackground(
      title: "Paciente",
      context: context,
      content: Column(
        children: [
          CardProfile(
            name: info['name'],
            size: size,
            svg: info['svg'],
            hero: info['id'],
          ),
          Line(size: size),
          _name(),
          Line(size: size),
          GestureDetector(
              child:
                  RoundOption(option: "PERFIL", size: size, svg: optionsSvg[0]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PagePatientProfile(
                              info: info,
                            )));
              }),
          Line(size: size),
          GestureDetector(
              child: RoundOption(
                  option: "ACTIVIDADES", size: size, svg: optionsSvg[1]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageActivities(
                            //id: data[index]['id'],
                            )));
              }),
          Line(size: size),
          GestureDetector(
              child: RoundOption(
                  option: "AVANCE", size: size, svg: optionsSvg[2])),
          Line(size: size),
          GestureDetector(
              child: RoundOption(
                  option: "AUTOREGISTRO", size: size, svg: optionsSvg[3]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageSelfRegistrations(
                            //id: data[index]['id'],
                            )));
              }),
        ],
      ),
    ));
  }

  Widget _name() {
    return AutoSizeText(
      info['name'],
      style: TextStyle(color: AppColors.COLOR_MAIN_TEXT, fontSize: 30),
    );
  }
}
