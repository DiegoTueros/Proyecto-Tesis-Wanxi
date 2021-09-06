part of 'shared_files.dart';

class AppBackground extends StatelessWidget {
  final Widget content;
  final String title;
  final BuildContext context;
  final bool returned;
  AppBackground(
      {@required this.content,
      @required this.title,
      this.context,
      this.returned = true});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height / 12),
            child: AppBar(
                leading: GestureDetector(
                  child: Visibility(
                      visible: returned,
                      child: Icon(Icons.arrow_back_ios, size: 30)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Fredoka-one'),
                  textAlign: TextAlign.left,
                ),
                centerTitle: true,
                actions: [
                  Icon(
                    Icons.more_vert,
                    size: 30,
                  ),
                ],
                backgroundColor: AppColors.COLOR_PRIMARY),
          ),
          body: content,
          bottomNavigationBar: Container(
            height: size.height / 12,
            color: AppColors.COLOR_PRIMARY,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, AppConstants.PAGE_HOME);
              },
              child: Center(
                child: SvgPicture.asset(
                  "assets/svgs/icon_home.svg",
                  width: 35,
                ),
              ),
            ),
          )),
    );
  }
}
