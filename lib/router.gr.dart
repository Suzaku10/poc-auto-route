// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'pages/categories/categories_page.dart' as _i8;
import 'pages/login/login_page.dart' as _i5;
import 'pages/main/main_page.dart' as _i7;
import 'pages/onboarding/onboarding_page.dart' as _i4;
import 'pages/profile/account_page.dart' as _i9;
import 'pages/profile/children/address_page.dart' as _i11;
import 'pages/profile/children/profile_page.dart' as _i10;
import 'pages/register/register_page.dart' as _i6;
import 'pages/splash/splash_page.dart' as _i3;

class SetokoRouter extends _i1.RootStackRouter {
  SetokoRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    OnboardingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.OnboardingPage();
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.LoginPage();
        }),
    RegisterRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.RegisterPage();
        }),
    MainRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.MainPage();
        }),
    CategoriesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.CategoriesPage();
        }),
    AccountRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    AccountRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.AccountPage();
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.ProfilePage();
        }),
    AddressRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.AddressPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i1.RouteConfig(SplashRoute.name, path: '/splash'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register'),
        _i1.RouteConfig(MainRoute.name, path: '/main'),
        _i1.RouteConfig(CategoriesRoute.name, path: '/categories'),
        _i1.RouteConfig(AccountRouter.name, path: '/account', children: [
          _i1.RouteConfig(AccountRoute.name, path: ''),
          _i1.RouteConfig(ProfileRoute.name, path: 'my-profile'),
          _i1.RouteConfig(AddressRoute.name, path: 'my-address'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ])
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/splash');

  static const String name = 'SplashRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register');

  static const String name = 'RegisterRoute';
}

class MainRoute extends _i1.PageRouteInfo {
  const MainRoute() : super(name, path: '/main');

  static const String name = 'MainRoute';
}

class CategoriesRoute extends _i1.PageRouteInfo {
  const CategoriesRoute() : super(name, path: '/categories');

  static const String name = 'CategoriesRoute';
}

class AccountRouter extends _i1.PageRouteInfo {
  const AccountRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/account', initialChildren: children);

  static const String name = 'AccountRouter';
}

class AccountRoute extends _i1.PageRouteInfo {
  const AccountRoute() : super(name, path: '');

  static const String name = 'AccountRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: 'my-profile');

  static const String name = 'ProfileRoute';
}

class AddressRoute extends _i1.PageRouteInfo {
  const AddressRoute() : super(name, path: 'my-address');

  static const String name = 'AddressRoute';
}
