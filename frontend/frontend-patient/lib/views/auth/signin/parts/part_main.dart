part of '../page_sign_in.dart';

class _PartMain extends StatefulWidget {
  @override
  __PartMainState createState() => __PartMainState();
}

class __PartMainState extends State<_PartMain> {
  //VARIABLES
  bool _obscureText = true;
  //final authService = new AuthService();
  // CONTROLLERS
  final _inputEmailController = TextEditingController();
  final _inputPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height / 3.5,
          ),
          _loginForm(size),
        ],
      ),
    );
  }

  Widget _loginForm(Size size) {
    return Form(
      child: Column(
        children: <Widget>[
          _inputEmail(),
          SizedBox(height: size.height * 0.03),
          _inputPassword(),
          SizedBox(height: size.height * 0.05),
          _buttomLogin(size),
        ],
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        controller: _inputEmailController,
        style: TextStyle(
          color: AppColors.COLOR_PRIMARY,
        ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Usuario",
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_MAIN_TEXT2),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDAE3E5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Escriba su número';
          }
          return null;
        },
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        controller: _inputPasswordController,
        decoration: InputDecoration(
          labelText: "Contraseña",
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_MAIN_TEXT2),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDAE3E5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9EA9A9)),
          ),
          suffixIcon: InkWell(
            onTap: () => setState(() {
              _obscureText = !_obscureText;
            }),
            child: Icon(Icons.remove_red_eye),
          ),
        ),
        obscureText: _obscureText,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Escriba su contraseña';
          }

          return null;
        },
      ),
    );
  }

  /*Widget _buttomLogin(Size size) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RaisedButton(
        onPressed: () async {
          final email = _inputEmailController.text;
          final password = _inputPasswordController.text;
          final response = await this
              .authService
              .signin(SigninRequest(email: email, password: password));
          ;
          print("se llamo a la petición");
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
  }*/

  Widget _buttomLogin(Size size) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PageFirstInteraction(
                        title: "¡Hola!",
                        info1: "Me llamo",
                        info2:
                            "seré tu acompañante en el alivio de tu ansiedad. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra nec massa nec sollicitudin. Phasellus eleifend magna sodales, lobortis sapien sed, mollis nulla. Mauris bibendum ipsum iaculis, rhoncus nisi eu, commodo arcu. Curabitur pretium ultricies massa ut commodo.",
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
            "Empecemos",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
