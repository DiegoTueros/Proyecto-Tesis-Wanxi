part of '../pages_files.dart';

class PageInteractionEnjoyableActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "Act. Agradables",
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
        future: interactionProvider.loadData(),
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
        return CardInteraction(data: data[index]);
      },
    );
  }
}
