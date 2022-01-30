part of '../pages_files.dart';

class PageAddSelfRegistration extends StatelessWidget {
  final dynamic data;
  PageAddSelfRegistration({@required this.data});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 36,
              ),
              _title(),
              SizedBox(
                height: size.height / 36,
              ),
              _situation(),
              SizedBox(
                height: size.height / 36,
              ),
              _emotions(),
              SizedBox(
                height: size.height / 36,
              ),
              _thought(),
              SizedBox(
                height: size.height / 36,
              ),
              _whatIDo(),
              SizedBox(
                height: size.height / 36,
              ),
              _utility(),
              _addButtom(size, context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      "Registrar Autoregistro",
      style: TextStyle(
          fontSize: 20,
          color: AppColors.COLOR_MAIN_TEXT,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.bold),
    );
  }

  Widget _situation() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Situación que dispara la preocupación",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontSize: 15,
                    fontFamily: 'Comfortaa'),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              maxLines: 3,
              style: TextStyle(
                color: AppColors.COLOR_PRIMARY,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: AppColors.COLOR_PRIMARY,
                  focusColor: AppColors.COLOR_PRIMARY,
                  fillColor: AppColors.COLOR_PRIMARY),
            ),
          ],
        ));
  }

  Widget _emotions() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Que emoción siento",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontSize: 15,
                    fontFamily: 'Comfortaa'),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              maxLines: 3,
              style: TextStyle(
                color: AppColors.COLOR_PRIMARY,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: AppColors.COLOR_PRIMARY,
                  focusColor: AppColors.COLOR_PRIMARY,
                  fillColor: AppColors.COLOR_PRIMARY),
            ),
          ],
        ));
  }

  Widget _thought() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "¿Qué pienso? ¿Qué temo que pueda pasar?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontSize: 15,
                    fontFamily: 'Comfortaa'),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              maxLines: 3,
              style: TextStyle(
                color: AppColors.COLOR_PRIMARY,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: AppColors.COLOR_PRIMARY,
                  focusColor: AppColors.COLOR_PRIMARY,
                  fillColor: AppColors.COLOR_PRIMARY),
            ),
          ],
        ));
  }

  Widget _whatIDo() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "¿Qué hago para reducir la preocupación?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontSize: 15,
                    fontFamily: 'Comfortaa'),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              maxLines: 3,
              style: TextStyle(
                color: AppColors.COLOR_PRIMARY,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: AppColors.COLOR_PRIMARY,
                  focusColor: AppColors.COLOR_PRIMARY,
                  fillColor: AppColors.COLOR_PRIMARY),
            ),
          ],
        ));
  }

  Widget _utility() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "¿Ha sido util preocuparme?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_MAIN_TEXT,
                    fontSize: 15,
                    fontFamily: 'Comfortaa'),
                textAlign: TextAlign.left,
              ),
            ),
            Container(child: NumberSlide())
          ],
        ));
  }

  Widget _addButtom(size, context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, AppConstants.PAGE_HOME);
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        textColor: Colors.white,
        padding: const EdgeInsets.all(0),
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: size.width * 0.5,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              color: AppColors.COLOR_MAIN_TEXT),
          padding: const EdgeInsets.all(0),
          child: Text(
            "Agregar",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
