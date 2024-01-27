void main() {
  AuthState state = AuthState(
    error: 'hahaha'
  );
  print(buildByAuthState(state));
  state = AuthState(
    user: 'toly',
    token: 'token',
    status: AuthStatus.success,
  );
  print(buildByAuthState(state));

  state = AuthState(
    error: '用户名密码错误',
    user: "111",
    status: AuthStatus.error,
  );
  print(buildByAuthState(state));
}

String buildByAuthState(AuthState state) {
  switch (state.status) {
    case AuthStatus.loading:
      return 'AuthLoading View';
    case AuthStatus.success:
      return 'AuthFailure View:${state.user}';
    case AuthStatus.error:
      return 'AuthSuccess View:${state.error}';
  }
}

enum AuthStatus {
  loading,
  success,
  error,
}

class AuthState {
  String? error;
  String? user;
  String? token;
  AuthStatus status;

  AuthState({
    this.error,
    this.user,
    this.token,
    this.status = AuthStatus.loading,
  });
}







