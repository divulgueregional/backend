import 'package:backend/src/app_rotas.dart'; //define rotas
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

// função de inicialização das rotas
Future<Handler> starShelfModular() async {
  final handler = Modular(module: AppModule(), middlewares: [
    logRequests(),
  ]);
  return handler;
}
