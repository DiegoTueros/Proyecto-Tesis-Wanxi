part of 'providers_files.dart';

class _PatientsProvider {
  List<dynamic> patients = [];

  _PatientsProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('assets/patients.json');
    Map dataMap = json.decode(resp);
    patients = dataMap['patients'];

    return patients;
  }
}

final patientsProvider = new _PatientsProvider();
