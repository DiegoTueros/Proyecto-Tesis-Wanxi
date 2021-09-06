part of '../pages_files.dart';

class PageAddQuestion extends StatefulWidget {
  @override
  _PageAddQuestionState createState() => _PageAddQuestionState();
}

class _PageAddQuestionState extends State<PageAddQuestion> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "Agregar Pregunta",
        context: context,
        content: Column(
          children: [
            _inputQuestion(),
            _inputOption(),
            _addOption(),
            SaveQuestionButtom()
          ],
        ),
      ),
    );
  }

  Widget _inputQuestion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Pregunta:',
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_MAIN_TEXT),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.COLOR_MAIN_TEXT)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.COLOR_MAIN_TEXT),
          ),
        ),
      ),
    );
  }

  Widget _inputOption() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Opciones:',
          labelStyle: TextStyle(
              fontFamily: 'Comfortaa', color: AppColors.COLOR_MAIN_TEXT),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.COLOR_MAIN_TEXT)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.COLOR_MAIN_TEXT),
          ),
        ),
      ),
    );
  }

  Widget _addOption() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        child: SvgPicture.asset(
          "assets/svgs/icon_plus_grey.svg",
          width: 30,
        ),
      ),
    );
  }
}
