part of 'pages_files.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "Wanxi-T",
        returned: false,
        content: Column(
          children: [
            SizedBox(
              height: size.height / 36,
            ),
            _listPatients(context),
            SizedBox(
              height: size.height / 36,
            ),
            AddPatientButtom(),
            SizedBox(
              height: size.height / 36,
            )
          ],
        ),
      ),
    );
  }

  Widget _listPatients(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: patientsProvider.loadData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return _showData(snapshot.data);
        },
      ),
    );
  }

  Widget _showData(dynamic data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: CardPatient(information: data[index]),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PagePatient(
                          info: data[index],
                        )));
          },
        );
      },
    );
  }
}
