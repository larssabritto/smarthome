
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_home/app/pages/home/home_page.dart';


class AppModule extends Module {
  AppModule();
}

@override
List<Bind> get binds => [];

@override
List<ModularRoute> get routes =>
    [ChildRoute("/", guards: [], child: (_, __) => const Homepage())];
