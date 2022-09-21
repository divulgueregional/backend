import 'package:backend/backend.dart';
import 'package:shelf/shelf_io.dart' as io;

//iniciar servidor web
void main(List<String> arguments) async {
  final handler = await starShelfModular(); // backend/backend.dart
  final server = await io.serve(handler, '0.0.0.0', 4466);
  //aonde está rodando
  print('Server Online - ${server.address.address}:${server.port}');
}
