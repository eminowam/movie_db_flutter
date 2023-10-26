import 'package:flutter/cupertino.dart';

class AuthModel extends ChangeNotifier {
  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  bool _isAuthProgress=false;
  bool get canStartAuth=> _isAuthProgress;

  Future<void> auth(BuildContext context) async {}
}

class AuthProvider extends InheritedNotifier {
  final AuthModel model;

  const AuthProvider({
    super.key,
    required Widget child,
    required this.model,
  }) : super(
          child: child,
          notifier: model,
        );

  static AuthProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthProvider>();
  }

  static AuthProvider? read(BuildContext context) {
    final widget =
        context.getElementForInheritedWidgetOfExactType<AuthProvider>()?.widget;

    return widget is AuthProvider ? widget : null;
  }

  static AuthProvider of(BuildContext context) {
    final AuthProvider? result =
        context.dependOnInheritedWidgetOfExactType<AuthProvider>();
    assert(result != null, 'No AuthProvider found in context');
    return result!;
  }
}
