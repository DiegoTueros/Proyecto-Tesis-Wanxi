part of '../page_sign_up.dart';

class _PartMain extends StatefulWidget {
  @override
  __PartMainState createState() => __PartMainState();
}

class __PartMainState extends State<_PartMain> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height / 5,
          ),
          _title(),
          _registerForm(size),
          _redirectLogin()
        ],
      ),
    );
  }

  Widget _title() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        "REGISTRO",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.COLOR_PRIMARY,
            fontSize: 36,
            fontFamily: 'Fredoka-one'),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _registerForm(Size size) {
    return Form(
      child: Column(
        children: <Widget>[
          _inputName(),
          _inputLastName(),
          _inputEmail(),
          _inputPassword(),
          _buttomRegister(size),
        ],
      ),
    );
  }

  Widget _inputName() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        style: TextStyle(
          color: AppColors.COLOR_MAIN_TEXT,
        ),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: "Nombres",
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_PRIMARY),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDAE3E5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
        ),
      ),
    );
  }

  Widget _inputLastName() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: "Apellidos",
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_PRIMARY),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDAE3E5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Correo",
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_PRIMARY),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDAE3E5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: "Contraseña",
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_PRIMARY),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDAE3E5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye, color: AppColors.COLOR_PRIMARY),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Escriba su contraseña';
          }

          return null;
        },
      ),
    );
  }

  Widget _buttomRegister(Size size) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RaisedButton(
        onPressed: () => {
          Navigator.pushReplacementNamed(context, AppConstants.PAGE_SIGN_IN)
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
              color: Color(0xffA8B9B9)),
          padding: const EdgeInsets.all(0),
          child: Text(
            "Ingresar",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _redirectLogin() {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: 55),
      child: GestureDetector(
        onTap: () => {
          Navigator.pushReplacementNamed(context, AppConstants.PAGE_SIGN_IN)
        },
        child: Text(
          "Ya tienes una cuenta? Ingresa aquí",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w100,
              fontFamily: 'Oswald',
              color: AppColors.COLOR_PRIMARY),
        ),
      ),
    );
  }
}
