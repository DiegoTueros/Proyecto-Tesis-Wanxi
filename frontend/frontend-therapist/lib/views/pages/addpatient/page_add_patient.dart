part of '../pages_files.dart';

class PageAddPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 9,
            ),
            _title(),
            SizedBox(
              height: size.height / 30,
            ),
            _inputName(),
            _inputLastName(),
            _imputsAgeSex(),
            _inputEmail(),
            _inputCelular(),
            _inputDescripcion(),
            _buttoms(size, context)
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return AutoSizeText(
      "Agregar Paciente",
      style: TextStyle(
          fontSize: 30,
          color: AppColors.COLOR_MAIN_TEXT,
          fontWeight: FontWeight.w500),
    );
  }

  Widget _inputName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Nombres',
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

  Widget _inputLastName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Apellidos',
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

  Widget _imputsAgeSex() {
    return Row(children: [
      Flexible(flex: 3, child: _inputAge()),
      Flexible(flex: 3, child: _inputSex())
    ]);
  }

  Widget _inputAge() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Edad',
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

  Widget _inputSex() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Sexo',
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

  Widget _inputEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Apellidos',
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

  Widget _inputCelular() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Celular',
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
        maxLines: 3,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Descripción',
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
