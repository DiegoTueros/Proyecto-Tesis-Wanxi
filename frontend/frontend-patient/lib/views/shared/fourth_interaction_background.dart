part of 'shared_files.dart';

class FourthInteractionBackground extends StatelessWidget {
  final Widget content;
  FourthInteractionBackground({
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
            top: size.height / 30,
            left: 0,
            child: SvgPicture.asset("assets/svgs/half_cloud.svg",
                width: size.width / 4),
          ),
          Positioned(
            top: size.height / 30,
            right: size.width / 30,
            child: SvgPicture.asset("assets/svgs/small_cloud.svg",
                width: size.width / 4),
          ),
          Positioned(
              bottom: 0,
              child: SvgPicture.asset("assets/svgs/anxi_down.svg",
                  width: size.width)),
          Positioned(
              top: size.height / 9,
              child: Container(
                width: size.width,
                height: size.height / 3,
                child: content,
              )),
        ],
      ),
    );
  }
}
