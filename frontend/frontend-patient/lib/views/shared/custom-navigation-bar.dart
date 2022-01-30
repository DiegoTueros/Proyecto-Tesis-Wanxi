part of 'shared_files.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return BottomNavigationBar(
        onTap: (int i) => uiProvider.selectedMenuOpt = i,
        backgroundColor: AppColors.COLOR_PRIMARY,
        selectedItemColor: AppColors.COLOR_MAIN_TEXT,
        unselectedItemColor: AppColors.COLOR_MAIN_TEXT2,
        currentIndex: uiProvider.selectedMenuOpt,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/rocket.svg",
                width: 40,
                color: uiProvider.selectedMenuOpt == 0
                    ? AppColors.COLOR_MAIN_TEXT
                    : AppColors.COLOR_MAIN_TEXT2,
              ),
              label: "Actividades"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/paper.svg",
                width: 40,
                color: uiProvider.selectedMenuOpt == 1
                    ? AppColors.COLOR_MAIN_TEXT
                    : AppColors.COLOR_MAIN_TEXT2,
              ),
              label: "Autoregistro"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/prize.svg",
                width: 40,
                color: uiProvider.selectedMenuOpt == 2
                    ? AppColors.COLOR_MAIN_TEXT
                    : AppColors.COLOR_MAIN_TEXT2,
              ),
              label: "Progreso"),
        ]);
  }
}
