part of 'providers_files.dart';

class _SelfRegistrationPovider {
  List<dynamic> selfRegistration = [];

  _SelfRegistrationPovider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('assets/self-registration.json');
    Map dataMap = json.decode(resp);
    selfRegistration = dataMap['patients'];

    return selfRegistration;
  }
}

final selfRegistrationProvider = new _SelfRegistrationPovider();
