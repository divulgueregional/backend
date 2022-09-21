import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class UserResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get('/user', _getAlluser),
        // Route.get('/user:id', _getUserById),
        Route.post('/user', _createUser),
        Route.put('/user', _updateUser),
        Route.delete('/user:id', _deleteUser)
      ];

  FutureOr<Response> _getAlluser() {
    return Response.ok('All user');
  }

  // FutureOr<Response> _getUserById() {
  //   return Response.ok('User:');
  // }

  FutureOr<Response> _createUser() {
    return Response.ok('Create User:'); //recebe um json
  }

  FutureOr<Response> _updateUser() {
    return Response.ok('Updated User:'); //recebe um json
  }

  FutureOr<Response> _deleteUser() {
    return Response.ok(' Deleted User:');
  }
}
