part of 'shared_files.dart';

class FirstInteractionBackground extends StatelessWidget {
  final Widget content;
  FirstInteractionBackground({
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            left: 0,
            child: SvgPicture.asset("assets/svgs/half_cloud.svg",
                width: size.width / 3),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset("assets/svgs/small_cloud.svg",
                width: size.width / 3),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/svgs/clouds_down.svg",
              width: size.width,
            ),
          ),
          Positioned(
              top: size.height / 14,
              right: size.width / 10,
              child: SvgPicture.asset("assets/svgs/anxi.svg",
                  width: size.width / 1.9)),
          Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height / 2.5,
                child: content,
              )),
        ],
      ),
    );
  }
}
