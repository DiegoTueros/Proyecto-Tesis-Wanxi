part of '../pages_files.dart';

class PageSelfRegistration extends StatelessWidget {
  final dynamic data;
  PageSelfRegistration({@required this.data});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "24 JUL",
        context: context,
        content: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 36,
              ),
              CardSelfRegistrationInfo(
                  title: "Situación que dispara la preocupación",
                  information: data['situation']),
              CardSelfRegistrationEmotion(
                emotion: data['emotions'],
              ),
              CardSelfRegistrationInfo(
                  title: "¿Qué pienso? ¿Qué temo que pueda pasar?",
                  information: data['thought']),
              CardSelfRegistrationInfo(
                  title: "¿Qué hago para reducir la preocupación?",
                  information: data['whatIDo']),
              CardSelfRegistrationInfo(
                  title: "¿Ha sido util preocuparme?",
                  information: data['utility'].toString())
            ],
          ),
        ),
      ),
    );
  }
}
