part of 'shared_files.dart';

class ThirdInteractionBackground extends StatelessWidget {
  final Widget content;
  ThirdInteractionBackground({
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
            top: size.height / 10,
            left: 0,
            child: SvgPicture.asset("assets/svgs/small_half_cloud.svg",
                width: size.width / 4),
          ),
          Positioned(
            top: size.height / 30,
            right: size.width / 30,
            child: SvgPicture.asset("assets/svgs/small_cloud.svg",
                width: size.width / 5),
          ),
          Positioned(
            top: 0,
            left: size.width / 5,
            child: SvgPicture.asset(
              "assets/svgs/half_cloud_top.svg",
              width: size.width / 2.5,
            ),
          ),
          Positioned(
              bottom: 0,
              child: SvgPicture.asset("assets/svgs/ground_down.svg",
                  width: size.width)),
          Positioned(
              top: size.height / 12,
              right: size.width / 10,
              child: SvgPicture.asset("assets/svgs/anxi.svg",
                  width: size.width / 1.9)),
          Positioned(
              bottom: 0,
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
