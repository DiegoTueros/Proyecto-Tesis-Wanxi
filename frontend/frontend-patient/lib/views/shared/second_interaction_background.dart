part of 'shared_files.dart';

class SecondInteractionBackground extends StatelessWidget {
  final Widget content;
  SecondInteractionBackground({
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
            top: size.height / 1.5,
            left: 0,
            child: SvgPicture.asset("assets/svgs/half_cloud.svg",
                width: size.width / 4),
          ),
          Positioned(
            top: 25,
            right: 0,
            child: SvgPicture.asset("assets/svgs/half_cloud_right.svg",
                width: size.width / 3.5),
          ),
          Positioned(
            top: 0,
            left: 10,
            child: SvgPicture.asset(
              "assets/svgs/half_cloud_top.svg",
              width: size.width / 2.5,
            ),
          ),
          Positioned(
              bottom: -(size.height / 12),
              right: size.width / 10,
              child: SvgPicture.asset("assets/svgs/anxi.svg",
                  width: size.width / 1.9)),
          Positioned(
              top: size.height / 6,
              height: size.height / 2.5,
              child: SvgPicture.asset("assets/svgs/speech-balloon.svg",
                  width: size.width)),
          Positioned(
              top: size.height / 6,
              child: Container(
                width: size.width,
                height: size.height / 3.2,
                child: content,
              )),
        ],
      ),
    );
  }
}
