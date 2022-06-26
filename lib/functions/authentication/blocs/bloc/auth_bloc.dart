import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late StreamSubscription<User?> _authenticationStatusSubscription;

  AuthBloc() : super(AuthInitial()) {
    _authenticationStatusSubscription =
        FirebaseAuth.instance.userChanges().listen((User? user) async {
      if (user == null) {
        //Navigate signin
      } else {
        //Navigate to homescreen
      }
    });

    on<AuthEvent>((event, emit) {});
  }
}
