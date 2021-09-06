part of 'providers_files.dart';

class _InteractionProvider {
  List<dynamic> patients = [];

  _InteractionProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('assets/interaction.json');
    Map dataMap = json.decode(resp);
    patients = dataMap['interation'];

    return patients;
  }
}

final interactionProvider = new _InteractionProvider();
