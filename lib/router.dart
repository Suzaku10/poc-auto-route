import 'package:auto_route/auto_route.dart';
import 'package:poc_autoroute/pages/categories/categories_page.dart';
import 'package:poc_autoroute/pages/home/home_page.dart';
import 'package:poc_autoroute/pages/login/login_page.dart';
import 'package:poc_autoroute/pages/main/main_page.dart';
import 'package:poc_autoroute/pages/onboarding/onboarding_page.dart';
import 'package:poc_autoroute/pages/payment/payment_page.dart';
import 'package:poc_autoroute/pages/profile/account_page.dart';
import 'package:poc_autoroute/pages/profile/children/address_page.dart';
import 'package:poc_autoroute/pages/profile/children/profile_page.dart';
import 'package:poc_autoroute/pages/promos/promo_page.dart';
import 'package:poc_autoroute/pages/register/register_page.dart';
import 'package:poc_autoroute/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/splash', page: SplashPage, initial: true),
    AutoRoute(path: '/onboarding', page: OnboardingPage),
    //login section
    AutoRoute(path: '/login', page: LoginPage),
    //register section
    AutoRoute(path: '/register', page: RegisterPage),

    AutoRoute(path: '/main', page: MainPage),
    AutoRoute(path: '/categories', page: CategoriesPage),
    AutoRoute(
      path: "/account",
      name: "AccountRouter",
      page: AccountPage,
      children: [
        AutoRoute(path: '', page: AccountPage),
        // my account section
        AutoRoute(path: 'my-profile', page: ProfilePage),
        AutoRoute(path: 'my-address', page: AddressPage),
        // AutoRoute(path: 'return-and-refund', page: ProfilePage),
        // AutoRoute(path: 'my-wishlist', page: ProfilePage),
        // AutoRoute(path: 'subscription', page: ProfilePage),
        // AutoRoute(path: 'my-ticket', page: ProfilePage),
        // AutoRoute(path: 'gift-registry', page: ProfilePage),
        // AutoRoute(path: 'security', page: ProfilePage),
        // AutoRoute(path: 'notification-settings', page: ProfilePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class $SetokoRouter {}
