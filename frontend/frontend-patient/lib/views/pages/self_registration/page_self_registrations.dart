part of '../pages_files.dart';

class PageSelfRegistrations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: AppBackground(
        title: "Autoregistro",
        content: Column(
          children: [
            SizedBox(
              height: size.height / 36,
            ),
            _addSelfRegistration(context),
            _listSelfRegistration(context),
            SizedBox(
              height: size.height / 36,
            ),
          ],
        ),
      ),
    );
  }

  Widget _addSelfRegistration(context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Agregar",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.COLOR_SECONDARY_TEXT,
                  fontFamily: 'Comfortaa'),
            ),
            Icon(
              Icons.add_circle_outline_rounded,
              color: AppColors.COLOR_SECONDARY_TEXT,
              size: 25,
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PageAddSelfRegistration()));
      },
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
