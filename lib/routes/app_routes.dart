import 'package:mobilebank/presentation/splash_screen/splash_screen.dart';
import 'package:mobilebank/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mobilebank/presentation/login_page_tab_container_screen/login_page_tab_container_screen.dart';
import 'package:mobilebank/presentation/login_page_tab_container_screen/binding/login_page_tab_container_binding.dart';
import 'package:mobilebank/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:mobilebank/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:mobilebank/presentation/verify_email_screen/verify_email_screen.dart';
import 'package:mobilebank/presentation/verify_email_screen/binding/verify_email_binding.dart';
import 'package:mobilebank/presentation/country_or_region_screen/country_or_region_screen.dart';
import 'package:mobilebank/presentation/country_or_region_screen/binding/country_or_region_binding.dart';
import 'package:mobilebank/presentation/mine_page_container_screen/mine_page_container_screen.dart';
import 'package:mobilebank/presentation/mine_page_container_screen/binding/mine_page_container_binding.dart';
import 'package:mobilebank/presentation/transfer_screen/transfer_screen.dart';
import 'package:mobilebank/presentation/transfer_screen/binding/transfer_binding.dart';
import 'package:mobilebank/presentation/send_money_screen/send_money_screen.dart';
import 'package:mobilebank/presentation/send_money_screen/binding/send_money_binding.dart';
import 'package:mobilebank/presentation/currency_exchange_screen/currency_exchange_screen.dart';
import 'package:mobilebank/presentation/currency_exchange_screen/binding/currency_exchange_binding.dart';
import 'package:mobilebank/presentation/transfer_amount_screen/transfer_amount_screen.dart';
import 'package:mobilebank/presentation/transfer_amount_screen/binding/transfer_amount_binding.dart';
import 'package:mobilebank/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:mobilebank/presentation/confirmation_screen/binding/confirmation_binding.dart';
import 'package:mobilebank/presentation/transfer_request_screen/transfer_request_screen.dart';
import 'package:mobilebank/presentation/transfer_request_screen/binding/transfer_request_binding.dart';
import 'package:mobilebank/presentation/history_screen/history_screen.dart';
import 'package:mobilebank/presentation/history_screen/binding/history_binding.dart';
import 'package:mobilebank/presentation/atm_location_screen/atm_location_screen.dart';
import 'package:mobilebank/presentation/atm_location_screen/binding/atm_location_binding.dart';
import 'package:mobilebank/presentation/profile_screen/profile_screen.dart';
import 'package:mobilebank/presentation/profile_screen/binding/profile_binding.dart';
import 'package:mobilebank/presentation/settings_screen/settings_screen.dart';
import 'package:mobilebank/presentation/settings_screen/binding/settings_binding.dart';
import 'package:mobilebank/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mobilebank/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginPage = '/login_page';

  static const String loginPageTabContainerScreen =
      '/login_page_tab_container_screen';

  static const String signUpPage = '/sign_up_page';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verifyEmailScreen = '/verify_email_screen';

  static const String countryOrRegionScreen = '/country_or_region_screen';

  static const String minePage = '/mine_page';

  static const String minePageContainerScreen = '/mine_page_container_screen';

  static const String transferScreen = '/transfer_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String statisticsPage = '/statistics_page';

  static const String statisticsTabContainerPage =
      '/statistics_tab_container_page';

  static const String currencyExchangeScreen = '/currency_exchange_screen';

  static const String transferAmountScreen = '/transfer_amount_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String transferRequestScreen = '/transfer_request_screen';

  static const String historyScreen = '/history_screen';

  static const String nationalBankPage = '/national_bank_page';

  static const String atmLocationScreen = '/atm_location_screen';

  static const String profileScreen = '/profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginPageTabContainerScreen,
      page: () => LoginPageTabContainerScreen(),
      bindings: [
        LoginPageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verifyEmailScreen,
      page: () => VerifyEmailScreen(),
      bindings: [
        VerifyEmailBinding(),
      ],
    ),
    GetPage(
      name: countryOrRegionScreen,
      page: () => CountryOrRegionScreen(),
      bindings: [
        CountryOrRegionBinding(),
      ],
    ),
    GetPage(
      name: minePageContainerScreen,
      page: () => MinePageContainerScreen(),
      bindings: [
        MinePageContainerBinding(),
      ],
    ),
    GetPage(
      name: transferScreen,
      page: () => TransferScreen(),
      bindings: [
        TransferBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyScreen,
      page: () => SendMoneyScreen(),
      bindings: [
        SendMoneyBinding(),
      ],
    ),
    GetPage(
      name: currencyExchangeScreen,
      page: () => CurrencyExchangeScreen(),
      bindings: [
        CurrencyExchangeBinding(),
      ],
    ),
    GetPage(
      name: transferAmountScreen,
      page: () => TransferAmountScreen(),
      bindings: [
        TransferAmountBinding(),
      ],
    ),
    GetPage(
      name: confirmationScreen,
      page: () => ConfirmationScreen(),
      bindings: [
        ConfirmationBinding(),
      ],
    ),
    GetPage(
      name: transferRequestScreen,
      page: () => TransferRequestScreen(),
      bindings: [
        TransferRequestBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: atmLocationScreen,
      page: () => AtmLocationScreen(),
      bindings: [
        AtmLocationBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
