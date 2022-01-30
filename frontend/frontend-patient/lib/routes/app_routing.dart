import 'package:flutter/material.dart';

import 'package:wanxi/views/auth/auth_files.dart';
import 'package:wanxi/views/pages/pages_files.dart';
import 'package:wanxi/utils/utils_files.dart';

Map<String, WidgetBuilder> getAppRouting() => {
      AppConstants.PAGE_HOME: (_) => PageHome(),
      AppConstants.PAGE_SPLASH: (_) => PageSplash(),
      AppConstants.PAGE_ONBOARDING: (_) => PageOnboarding(),
      AppConstants.PAGE_SIGN_IN: (_) => PageSignIn(),
    };
