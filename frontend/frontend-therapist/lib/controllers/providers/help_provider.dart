part of 'providers_files.dart';

class _HelpProvider {
  List<dynamic> patients = [];

  _HelpProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('assets/help.json');
    Map dataMap = json.decode(resp);
    patients = dataMap['helps'];

    return patients;
  }
}

final helpProvider = new _HelpProvider();
