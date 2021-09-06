part of 'shared_files.dart';

class Background extends StatelessWidget {
  // final Widget child;

  // const _PartBackground({
  //   Key key,
  //   @required this.child,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0,
          right: 0,
          child:
              SvgPicture.asset("assets/svgs/auth/top_1.svg", width: size.width),
        ),
        Positioned(
          top: 0,
          right: 0,
          child:
              SvgPicture.asset("assets/svgs/auth/top_2.svg", width: size.width),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset("assets/svgs/auth/bottom_1.svg",
              width: size.width),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset("assets/svgs/auth/bottom_2.svg",
              width: size.width),
        ),
      ],
    );
  }
}
