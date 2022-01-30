part of '../pages_files.dart';

class PageActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: AppBackground(
        content: content(size, context),
        title: "Actividades",
      ),
    );
  }

  Widget content(size, context) {
    return SingleChildScrollView(
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
                  child: CardActivities(text: 'Ejercicio de Respiración'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageFourthInteraction(
                                  info:
                                      "Descuida, habrá días más difíciles que otros. ¡Lo estás haciendo bien!",
                                  transition: "Finalizar",
                                  title: "¿No te sientes bien hoy?",
                                )));
                  }),
              GestureDetector(
                  child: CardActivities(text: 'Exposición Imaginal'),
                  onTap: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  child: CardActivities(text: 'Retos'), onTap: () {}),
              GestureDetector(
                  child: CardActivities(text: 'Revisión de Conocimientos'),
                  onTap: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  child: CardActivities(text: 'Actividades más agradables'),
                  onTap: () {}),
              GestureDetector(
                  child: CardActivities(text: 'Ayudas'), onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
