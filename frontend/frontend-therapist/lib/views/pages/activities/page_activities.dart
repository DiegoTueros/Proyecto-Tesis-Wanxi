part of '../pages_files.dart';

class PageActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: AppBackground(
            title: "Actividades",
            context: context,
            content: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          child:
                              CardActivities(text: 'Ejercicio de Respiración'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PageInteractionBreathingExercise()
                                    //id: data[index]['id'],
                                    ));
                          }),
                      GestureDetector(
                          child: CardActivities(text: 'Exposición Imaginal'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageImaginalExposure()
                                    //id: data[index]['id'],
                                    ));
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          child: CardActivities(text: 'Retos'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageChallenge(
                                        //id: data[index]['id'],
                                        )));
                          }),
                      GestureDetector(
                          child:
                              CardActivities(text: 'Revisión de Conocimientos'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageQuestion(
                                        //id: data[index]['id'],
                                        )));
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          child: CardActivities(
                              text: 'Actividades más agradables'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PageEnjoyableActivitities()));
                          }),
                      GestureDetector(
                          child: CardActivities(text: 'Ayudas'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageHelp()));
                          }),
                    ],
                  ),
                ],
              ),
            )));
  }
}
