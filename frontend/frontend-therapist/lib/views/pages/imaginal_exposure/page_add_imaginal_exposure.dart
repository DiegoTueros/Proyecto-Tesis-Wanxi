part of '../pages_files.dart';

class PageAddImaginalExposure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBackground(
        title: "Exposición Imaginal",
        context: context,
        content: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 9,
                ),
                _inputName(),
                SizedBox(
                  height: size.height / 9,
                ),
                _nextButton(size, context)
              ],
            ),
          ),
        ));
  }

  Widget _inputName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Nombre de la Exposición Imaginal',
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

  Widget _nextButton(Size size, context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PageAddImaginalExposureStep(
                      //data: data[index],
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
            "Siguiente",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
