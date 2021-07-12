import 'package:flutter/material.dart';
import 'package:mobile/screens/contacts/index.dart';
import 'package:mobile/screens/events/index.dart';
import 'package:mobile/screens/home/index.dart';
import 'package:mobile/screens/login/index.dart';
import 'package:mobile/screens/register/index.dart';
import 'package:mobile/screens/settings/index.dart';
import 'package:mobile/screens/welcome/index.dart';

const URL_WELCOME = '/welcome';
const URL_REGISTER = '/register';
const URL_LOGIN = '/login';
const URL_HOME = '/home';
const URL_EVENTS = '/events';
const URL_CONTACTS = '/contacts';
const URL_SETTINGS = '/settings';

final Map<String, WidgetBuilder> AppRoutes = {
  URL_WELCOME: (context) => WelcomeScreen(),
  URL_REGISTER: (context) => RegisterScreen(),
  URL_LOGIN: (context) => LoginScreen(),
  URL_HOME: (context) => HomeScreen(),
  URL_EVENTS: (context) => EventsScreen(),
  URL_CONTACTS: (context) => ContactsScreen(),
  URL_SETTINGS: (context) => SettingsScreen(),
};