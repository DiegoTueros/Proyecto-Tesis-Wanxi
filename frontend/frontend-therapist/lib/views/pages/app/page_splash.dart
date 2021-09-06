part of '../pages_files.dart';

class PageSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        new Duration(seconds: 2),
        () => {
              Future.microtask(() => Navigator.pushReplacementNamed(
                  context, AppConstants.PAGE_SIGN_IN))
            });
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SvgPicture.asset(
          "assets/svgs/Wanxi-t.svg",
        ),
      ),
    ));
  }
}
