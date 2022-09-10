import 'package:clean_riverpod/src/auth/domain/model/user.dart';
import 'package:clean_riverpod/src/auth/presentation/viewmodel/loginform/login_form_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginFormPage extends ConsumerStatefulWidget {
  final User? _user;

  const LoginFormPage(this._user);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormPageState();
}

class _LoginFormPageState extends ConsumerState<LoginFormPage> {
  late final LoginFormViewModel _viewModel;
  final _formKey = GlobalKey<FormState>();

  _LoginFormPageState();

  @override
  void initState() {
    _viewModel = ref.read(loginFormViewModelProvider(widget._user));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_viewModel.appBarTitle()),
      ),
      body: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFormWidget(),
          _buildSubmitButtonWidget(),
        ],
      ),
    );
  }

  Widget _buildSubmitButtonWidget() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          final currentState = _formKey.currentState;
          if (currentState != null && currentState.validate()) {
            _viewModel.login();
            //Navigator.push(context, route)
          }
        },
        child: const Text("Se connecter"),
      ),
    );
  }

  Widget _buildFormWidget() {
    return Form(
      key: _formKey,
      child: Column(children: [
        _buildEmailFormWidget(),
        const SizedBox(height: 16),
        _buildPasswordFormWidget()
      ]),
    );
  }

  Widget _buildEmailFormWidget() {
    return TextFormField(
      initialValue: _viewModel.initialEmailValue(),
      maxLength: 30,
      onChanged: ((value) => _viewModel.setEmail(value)),
      validator: (_) => _viewModel.validateEmail(),
      decoration: const InputDecoration(
        icon: Icon(Icons.mail),
        labelText: 'Email',
        helperText: 'Required',
        border: UnderlineInputBorder(),
      ),
    );
  }

  Widget _buildPasswordFormWidget() {
    return TextFormField(
      initialValue: _viewModel.initialPasswordValue(),
      maxLength: 30,
      onChanged: ((value) => _viewModel.setPassword(value)),
      validator: (_) => _viewModel.validatePassword(),
      decoration: const InputDecoration(
        icon: Icon(Icons.security),
        labelText: 'Password',
        helperText: 'Required',
        border: UnderlineInputBorder(),
      ),
    );
  }
}
