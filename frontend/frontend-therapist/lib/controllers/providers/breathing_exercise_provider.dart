part of 'providers_files.dart';

class _BreathingRespirationProvider {
  List<dynamic> patients = [];

  _BreathingRespirationProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('assets/breathing_exercise.json');
    Map dataMap = json.decode(resp);
    patients = dataMap['breathing-respiration'];

    return patients;
  }
}

final breathingRespirationProvider = new _BreathingRespirationProvider();
