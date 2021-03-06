import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_market/app/core/auth/auth_module.dart';
import 'package:easy_market/app/core/auth/guard/auth_guard.dart';
import 'package:easy_market/app/core/auth/services/auth_service.dart';
import 'package:easy_market/app/core/routes/deep_links/deep_links_module.dart';
import 'package:easy_market/app/modules/corroboration/corroboration_module.dart';
import 'package:easy_market/app/shared/services/stream_subscriptions_cancel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_market/app/core/routes/app_routes.dart';
import 'package:easy_market/app/core/pages/splash_screen_page.dart';
import 'package:easy_market/app/modules/shopping_list/shopping_list_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FirebaseFirestore.instance),
        Bind((i) => FirebaseAuth.instance),
        Bind((i) => FirebaseDynamicLinks.instance),
        ...DeepLinksModule.exportedBinds,
        ...AuthModule.exportedBinds,
        $AuthService,
        $StreamSubscriptionsCancel,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.main, child: (_, __) => SplashScreenPage()),
        ModuleRoute(AppRoutes.auth, module: CorroborationModule()),
        ModuleRoute(
          AppRoutes.lists,
          module: ShoppingListModule(),
          guards: [AuthGuard()],
        ),
      ];
}
