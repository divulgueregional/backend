// concatenar todas as nossas rotas
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:backend/src/features/user/user_resource.dart';

class AppModule extends Module {
  @override
  //todas as rotas que poderemos trabalhar
  List<ModularRoute> get routes => [
        Route.get('/', (Request request) => Response.ok('inicial')),
        Route.resource(UserResource()),
      ];
}
