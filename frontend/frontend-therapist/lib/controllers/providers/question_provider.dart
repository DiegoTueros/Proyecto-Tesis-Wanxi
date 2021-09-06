part of 'providers_files.dart';

class _QuestionProvider {
  List<dynamic> patients = [];

  _QuestionProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('assets/question.json');
    Map dataMap = json.decode(resp);
    patients = dataMap['question'];

    return patients;
  }
}

final questionProvider = new _QuestionProvider();
