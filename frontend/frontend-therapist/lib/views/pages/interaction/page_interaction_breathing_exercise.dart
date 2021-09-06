part of '../pages_files.dart';

class PageInteractionBreathingExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "Respiración",
        content: Column(
          children: [
            SizedBox(
              height: size.height / 36,
            ),
            _listBreathingExercise(context),
            SizedBox(
              height: size.height / 36,
            ),
            SizedBox(
              height: size.height / 36,
            )
          ],
        ),
      ),
    );
  }

  Widget _listBreathingExercise(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: breathingRespirationProvider.loadData(),
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
        return _cardBreathingExercise(data[index]);
      },
    );
  }

  Widget _cardBreathingExercise(dynamic data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.COLOR_PRIMARY_LIGHT,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(data['created_at'],
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16,
              color: AppColors.COLOR_MAIN_TEXT,
              fontFamily: 'Catamaran',
              fontWeight: FontWeight.bold)),
    );
  }
}
