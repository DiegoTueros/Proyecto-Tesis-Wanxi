part of '../pages_files.dart';

class PageSelfRegistrations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "Auto-Registros",
        context: context,
        content: Column(
          children: [
            SizedBox(
              height: size.height / 36,
            ),
            _listSelfRegistration(context),
            SizedBox(
              height: size.height / 36,
            ),
          ],
        ),
      ),
    );
  }

  Widget _listSelfRegistration(context) {
    return Expanded(
      child: FutureBuilder(
        future: selfRegistrationProvider.loadData(),
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
          child: CardSelfRegistration(selfRegistration: data[index]),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageSelfRegistration(
                          data: data[index],
                        )));
          },
        );
      },
    );
  }
}
