part 'settings_view_model.g.dart';
part 'subviewmodel/about_view_model.dart';

class SettingsViewModel = _SettingsViewModelBase with _$SettingsViewModel;

abstract class _SettingsViewModelBase with Store, BaseViewModel {
  final userModel = UserModel.fake();
  @override
  void setContext(BuildContext context) => this.context = context;

  @observable
  Locale? appLocale = LanguageManager.instance.enLocale;

  @override
  void init() {}

  void changeAppTheme() {
    if (context != null) {
      context!.read<ThemeNotifier>().changeTheme();
    }
  }

  @action
  void saveCostCalculatorData() {
    if (locale != null) {
      appLocale = locale;
      context?.setLocale(locale);
    }
  }


}