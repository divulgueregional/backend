import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class UserResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get('/user', _getAlluser),
        Route.get('/user:id', _getUserById),
        Route.post('/user', _createUser),
        Route.put('/user', _updateUser),
        Route.delete('/user:id', _deleteUser),
      ];

  FutureOr<Response> _getAlluser() {
    return Response.ok('All user');
  }

  FutureOr<Response> _getUserById(ModularArguments arguments) {
    return Response.ok('User: ${arguments.params['id']}');
  }

  FutureOr<Response> _createUser(ModularArguments arguments) {
    return Response.ok('Create User: ${arguments.data}'); //recebe um json
  }

  FutureOr<Response> _updateUser(ModularArguments arguments) {
    return Response.ok('Updated User: ${arguments.data}'); //recebe um json
  }

  FutureOr<Response> _deleteUser(ModularArguments arguments) {
    return Response.ok(' Deleted User: ${arguments.params['id']}');
  }
}
