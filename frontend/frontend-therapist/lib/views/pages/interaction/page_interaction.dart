part of '../pages_files.dart';

class PageInteraction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: AppBackground(
            title: "Interacción",
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
                                        PageInteractionBreathingExercise()));
                          }),
                      GestureDetector(
                          child: CardActivities(text: 'Exposición Imaginal'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PageInteractionImaginalExposure()));
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
                                    builder: (context) =>
                                        PageInteractionChallenge()));
                          }),
                      GestureDetector(
                          child:
                              CardActivities(text: 'Revisión de Conocimientos'),
                          onTap: () {}),
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
                                        PageInteractionEnjoyableActivities()));
                          }),
                      GestureDetector(
                          child: CardActivities(text: 'Ayudas'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PageInteractionHelp()));
                          }),
                    ],
                  ),
                ],
              ),
            )));
  }
}
