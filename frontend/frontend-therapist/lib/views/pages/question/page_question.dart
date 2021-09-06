part of '../pages_files.dart';

class PageQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AppBackground(
        title: "Preguntas",
        context: context,
        content: Column(
          children: [
            GestureDetector(
                child: AddQuestionButtom(),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageAddQuestion(
                              //data: data[index],
                              )));
                }),
            _listQuestion(context)
          ],
        ),
      ),
    );
  }

  Widget _listQuestion(context) {
    return Expanded(
      child: FutureBuilder(
        future: questionProvider.loadData(),
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
          child: CardQuesion(question: data[index]),
        );
      },
    );
  }
}
