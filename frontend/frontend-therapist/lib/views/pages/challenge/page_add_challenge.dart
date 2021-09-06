part of '../pages_files.dart';

class PageAddChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBackground(
        title: "Retos",
        context: context,
        content: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 9,
                ),
                _inputSituation(),
                _inputDescripcion(),
                _buttoms(size, context)
              ],
            ),
          ),
        ));
  }

  Widget _inputSituation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Nombre del Reto',
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_PRIMARY),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDAE3E5))),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
        ),
      ),
    );
  }

  Widget _inputDescripcion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        maxLines: 5,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Situación que debe enfrentar',
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_PRIMARY),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDAE3E5))),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
        ),
      ),
    );
  }

  Widget _buttoms(Size size, context) {
    return Container(
      margin: EdgeInsets.only(top: size.height / 20),
      child: Row(children: [
        Flexible(flex: 3, child: _cancelButton(size, context)),
        Flexible(flex: 3, child: _submitButton(size, context))
      ]),
    );
  }

  Widget _cancelButton(Size size, context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PageActivities(
                      //id: data[index]['id'],
                      )));
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
              color: AppColors.COLOR_PRIMARY),
          padding: const EdgeInsets.all(0),
          child: Text(
            "Cancelar",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _submitButton(Size size, context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
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
              color: AppColors.COLOR_PRIMARY),
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
