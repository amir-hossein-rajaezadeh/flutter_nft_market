part of 'app_cubit.dart';

class AppState extends Equatable {
  final int selectedNavBarIndex;
  final double genratedRandomInt;
  final int selectedBannerIndex ;

  AppState(
      {required this.selectedNavBarIndex,
      required this.genratedRandomInt,
      required this.selectedBannerIndex});

  AppState copyWith(
      {int? selectedNavBarIndex,
      double? genratedRandomInt,
      int? selectedBannerIndex}) {
    return AppState(
        selectedNavBarIndex: selectedNavBarIndex ?? this.selectedNavBarIndex,
        genratedRandomInt: genratedRandomInt ?? this.genratedRandomInt,
        selectedBannerIndex: selectedBannerIndex ?? this.selectedBannerIndex);
  }

  @override
  List<Object?> get props => [selectedNavBarIndex, genratedRandomInt,selectedBannerIndex];
}
