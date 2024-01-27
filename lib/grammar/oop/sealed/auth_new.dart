void main() {
  AuthState state = AuthLoading();
  print(buildByAuthState(state));
  state = AuthSuccess('toly', 'token');
  print(buildByAuthState(state));
  state = AuthFailure('用户名密码错误');
  print(buildByAuthState(state));
}

String buildByAuthState(AuthState state) {
  return switch (state) {
    AuthLoading() => 'AuthLoading View',
    AuthSuccess() => 'AuthSuccess View:${state.user}',
    AuthFailure() => 'AuthFailure View:${state.error}',
  };
}

//创建密封类
sealed class AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String user;
  final String token;

  AuthSuccess(this.user, this.token);
}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure(this.error);
}
