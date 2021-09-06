part of '../pages_files.dart';

class PagePatientProfile extends StatelessWidget {
  final dynamic info;

  PagePatientProfile({@required this.info});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppBackground(
      title: "Perfil",
      context: context,
      content: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: size.height / 20,
              ),
              _name(),
              _age(),
              SizedBox(
                height: size.height / 30,
              ),
              _extradata(info['email']),
              SizedBox(
                height: size.height / 80,
              ),
              _extradata(info['phone']),
              SizedBox(
                height: size.height / 30,
              ),
              _description(size)
            ],
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageInteraction()));
              },
              label: const Text(
                'Estadísticas',
                style: TextStyle(color: Colors.white, fontFamily: 'Catamaran'),
              ),
              icon: const Icon(
                Icons.pie_chart_rounded,
                color: Colors.white,
              ),
              backgroundColor: AppColors.COLOR_MAIN_TEXT,
            ),
          )),
    );
  }

  Widget _name() {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: AutoSizeText(
          "${info['name']} ${info['lastname']}",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.COLOR_MAIN_TEXT,
              fontSize: 28,
              fontFamily: "Catamaran"),
        ));
  }

  Widget _age() {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: AutoSizeText(
          "${info['age']} años",
          style: TextStyle(
              color: AppColors.COLOR_MAIN_TEXT,
              fontSize: 20,
              fontFamily: "Catamaran"),
        ));
  }

  Widget _extradata(String data) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: AutoSizeText(
          data,
          style: TextStyle(
              color: AppColors.COLOR_MAIN_TEXT,
              fontSize: 20,
              fontFamily: "Comfortaa"),
        ));
  }

  Widget _description(Size size) {
    return Container(
      width: double.infinity,
      height: size.height / 2.8,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.COLOR_PRIMARY_LIGHT,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(info['description'],
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontFamily: 'Catamaran')),
          ],
        ),
      ),
    );
  }
}
