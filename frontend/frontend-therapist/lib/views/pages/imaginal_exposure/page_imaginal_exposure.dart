part of '../pages_files.dart';

class PageImaginalExposure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBackground(
      title: "Exposición Imaginal",
      content: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: size.height / 36,
              ),
              GestureDetector(
                  child: AddQuestionButtom(),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageAddImaginalExposure(
                                //data: data[index],
                                )));
                  }),
              _listHelp(context),
              SizedBox(
                height: size.height / 36,
              ),
              SizedBox(
                height: size.height / 36,
              )
            ],
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PageInteractionImaginalExposure()));
              },
              label: const Text(
                'Interacción',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Catamaran', fontSize: 18),
              ),
              icon: const Icon(
                Icons.accessibility_new_rounded,
                color: Colors.white,
              ),
              backgroundColor: AppColors.COLOR_MAIN_TEXT,
            ),
          )),
    );
  }

  Widget _listHelp(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: helpProvider.loadData(),
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
        return _cardHelp(data[index]);
      },
    );
  }

  Widget _cardHelp(dynamic data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.COLOR_PRIMARY_LIGHT,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Text(data['situation'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.COLOR_MAIN_TEXT,
              fontFamily: 'Catamaran',
            )),
      ),
    );
  }
}
