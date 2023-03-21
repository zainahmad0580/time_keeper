import 'package:flutter/material.dart';
import 'package:time_keeper/utils/route/route_names.dart';
import 'package:time_keeper/view/widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final ValueNotifier<bool> _hideText = ValueNotifier<bool>(true);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _hideText.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _emailController,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'Email',
                      labelText: 'Email'),
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'Please fill this field';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 20,
              ),
              ValueListenableBuilder(
                valueListenable: _hideText,
                builder: (context, value, child) {
                  return TextFormField(
                      textInputAction: TextInputAction.done,
                      controller: _passwordController,
                      obscureText: value,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _hideText.value = !_hideText.value;
                            },
                            icon: value
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility)),
                        hintText: 'Password',
                        labelText: 'Password',
                      ),
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Please fill this field';
                        }
                        return null;
                      });
                },
              ),
              const SizedBox(height: 20),
              RoundButton(
                  title: 'Login',
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(context, RouteNames.home);
                    }
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signup);
                    },
                    child: const Text('Register Now!'),
                  )
                ],
              )
            ]),
          )),
    ));
  }
}
